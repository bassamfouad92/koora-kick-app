import 'package:koora_kick/common/http/api_error_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_exception.freezed.dart';

@freezed
class AppException with _$AppException {
  const AppException._();

  const factory AppException.connectivity() = AppExceptionConnectivity;

  const factory AppException.unauthorized() = AppExceptionUnauthorized;

  const factory AppException.errorWithMessage(String message) =
      _AppExceptionErrorMessage;

  const factory AppException.error() = _AppExceptionError;

  const factory AppException.api({
    required String message,
    int? statusCode,
    @Default([]) List<APIErrorItem> errors,
  }) = _AppExceptionApi;

  String get message => when(
        connectivity: () => 'Check your internet connection',
        unauthorized: () => 'Session expired, please login again',
        errorWithMessage: (msg) => msg,
        error: () => 'Something went wrong, please try again',
        api: (msg, _, __) => msg,
      );
}

