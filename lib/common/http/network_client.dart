import 'dart:async';
import 'dart:io';

import 'package:koora_kick/app/provider/language_provider.dart';
import 'package:koora_kick/common/extensions/map_builder.dart';
import 'package:koora_kick/common/extensions/null_check.dart';
import 'package:koora_kick/common/repositories/token_repository.dart';
import 'package:koora_kick/common/services/user_session_status.dart';
import 'package:koora_kick/common/services/session_expiry_provider.dart';

import 'package:koora_kick/config/env.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/http/response/api_response.dart';
import 'package:koora_kick/common/http/app_exception.dart';

import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/services/user_session_service.dart';
import 'package:koora_kick/common/utils/snack_bar_utils.dart';


final networkProvider = Provider<NetworkClient>(NetworkClient.new);

class NetworkClient {
  NetworkClient(this._ref) {
    _dio = Dio();
    _dio.options
      ..sendTimeout = const Duration(seconds: 30)
      ..connectTimeout = const Duration(seconds: 30)
      ..receiveTimeout = const Duration(seconds: 30);

    if (kDebugMode) {
      _dio.interceptors.add(PrettyDioLogger(requestBody: true));
    }

    _dio.interceptors.add(RetryInterceptor(
      dio: _dio,
      retries: 3, 
      retryDelays: const [
        Duration(seconds: 1), 
        Duration(seconds: 5), 
        Duration(seconds: 10), 
      ],
      retryEvaluator: (error, attempt) {
        if (error.type == DioExceptionType.connectionTimeout || 
            error.type == DioExceptionType.receiveTimeout || 
            (error.type == DioExceptionType.unknown && error.error is SocketException)) {
          return true;
        }
        return false;
      },
    ));

    final baseUrl = Env.apiUrl;
    if (baseUrl.isPresent) {
      _baseUrl = baseUrl;
    }
  }

  final Ref _ref;
  late final Dio _dio;
  late final TokenRepository _tokenRepository = _ref.read(tokenRepositoryProvider);
  late String _baseUrl;

  Future<Result<T>> execute<T>(HttpRequest<T> request) => _performRequest<T>(
      path: request.path,
      method: request.method,
      body: request.body?.toJson(),
      query: request.queryParams,
      headers: request.headers,
      contentType: request.contentType,
      overrideBaseUrl: request.overrideBaseUrl,
      token: request.overrideToken,
      requiresAuth: request.requiresAuth,
      isRetryEnabled: request.isRetryEnabled,
      mapper: request.mapper.map,
    );

  Future<Result<T>> _performRequest<T>({
    required String path,
    required HttpMethod method,
    required ContentType contentType,
    required bool requiresAuth,
    bool isRetryEnabled = false,
    required T Function(dynamic) mapper,
    dynamic body,
    Map<String, dynamic>? query,
    Map<String, String>? headers,
    String? overrideBaseUrl,
    String? token,
  }) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      return const Result.error(AppException.connectivity());
    }

    final url = (overrideBaseUrl ?? _baseUrl) + path;
    final appToken = await _tokenRepository.fetchToken();
    final language = _ref.watch(languageNotifierProvider).value;

    final requestHeaders = <String, String>{
      'accept': '*/*',
      'Content-Type': contentType.contentHeader,
      if (language != null) 'X-Language': language.code,
      ...?headers,
    };

    if (requiresAuth) {
      requestHeaders.attachBearerTokenIf(appToken?.raw);
    }
    requestHeaders.attachBearerTokenIf(token);

    try {
      final options = Options(
        validateStatus: (_) => true,
        headers: requestHeaders,
      )..disableRetry = !isRetryEnabled;

      final response = await _executeDioRequest(
        method: method,
        url: url,
        query: query,
        body: body,
        options: options,
      );

      final rawData = response.data as Map<String, dynamic>;
      final apiResponse = ApiResponse.fromJson(rawData, (data) => data);

      return apiResponse.status.let(
        (statusCode) => switch (statusCode) {
          _ when successCodes.contains(statusCode) => _handleSuccessResponse(
              apiResponse,
              mapper,
            ),
          401 => _handleUnauthorized(
              message: apiResponse.message,
              statusCode: apiResponse.status,
            requiredAuth: requiresAuth
            ),
          501 => const Result.error(AppException.connectivity()),
          
          _ => Result.error(
              AppException.api(
                message: apiResponse.message,
                statusCode: statusCode,
              ),
            ),
        },
        orElse: () => const Result.error(AppException.connectivity()),
      );
    } on DioException catch (e) {
      if (e.error is SocketException ||
          e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        return const Result.error(AppException.connectivity());
      }

      final message = e.response?.data['message'] ?? e.message ?? 'Network Error';
      return Result.error(
        AppException.errorWithMessage(message),
      );
    } catch (e) {
      return Result.error(AppException.errorWithMessage(e.toString()));
    }
  }

  Future<Response<dynamic>> _executeDioRequest({
    required HttpMethod method,
    required String url,
    required Options options,
    Map<String, dynamic>? query,
    dynamic body,
  }) => switch (method) {
      HttpMethod.get => _dio.get(url, queryParameters: query, options: options),
      HttpMethod.post => _dio.post(url, data: body, queryParameters: query, options: options),
      HttpMethod.put => _dio.put(url, data: body, queryParameters: query, options: options),
      HttpMethod.patch => _dio.patch(url, data: body, queryParameters: query, options: options),
      HttpMethod.delete => _dio.delete(url, data: body, queryParameters: query, options: options),
    };

  Result<T> _handleSuccessResponse<T>(
    ApiResponse<dynamic> apiResponse,
    T Function(dynamic) mapper,
  ) {
    if (successCodes.contains(apiResponse.status)) {
      try {
        return Result.success(mapper(apiResponse.data ?? <String, dynamic>{}));
      } catch (e, stackTrace) {
        debugPrint('Mapping Error: $e\nStack Trace: $stackTrace');
        return const Result.error(
          AppException.error(),
        );
      }
    }

    return Result.error(
      AppException.api(
        message: apiResponse.message,
        statusCode: apiResponse.status,
        errors: apiResponse.errors,
      ),
    );
  }

  Result<T> _handleUnauthorized<T>({
    required String message,
    required int statusCode,
    required bool requiredAuth,
  }) {
    final status = _ref.read(userSessionServiceProvider).value;

    if (status is AuthenticatedStatus && requiredAuth) {
      _ref.read(sessionExpiryProvider.notifier).state =
      message.isNotEmpty ? message : const AppException.unauthorized().message;
      return const Result.error(AppException.unauthorized());
    }

    return Result.error(
      AppException.api(
        message: message,
        statusCode: statusCode,
      ),
    );
  }
}
