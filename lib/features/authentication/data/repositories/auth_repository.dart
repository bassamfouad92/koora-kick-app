import 'package:koora_kick/common/http/network_client.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/features/authentication/data/requests/create_new_passcode_request.dart';
import 'package:koora_kick/features/authentication/data/requests/forgot_password_request.dart';
import 'package:koora_kick/features/authentication/data/requests/login_request.dart';
import 'package:koora_kick/features/authentication/data/requests/reset_passcode_otp_request.dart';
import 'package:koora_kick/features/authentication/data/requests/reset_password_request.dart';
import 'package:koora_kick/features/authentication/data/requests/social_auth_callback_request.dart';
import 'package:koora_kick/features/authentication/data/response/auth_session_response.dart';
import 'package:koora_kick/features/authentication/data/response/reset_passcode_otp_response.dart';
import 'package:koora_kick/features/authentication/domain/repositories/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider(AuthRepositoryImp.new);

class AuthRepositoryImp implements AuthRepository {
  AuthRepositoryImp(this._ref);

  late final networkClient = _ref.read(networkProvider);

  final Ref _ref;

  @override
  Future<Result<AuthSessionResponse>> login(LoginRequest request) async {
    final response = await networkClient.execute(request);
    return response.when(
      success: (session) async => Result.success(session),
      error: (exception) async => Result.error(exception),
    );
  }

  @override
  Future<Result<void>> forgotPassword(String email) async {
    final response = await networkClient.execute(
      ForgotPasswordRequest(email: email),
    );
    return response.when(
      success: (_) async => const Result.success(null),
      error: (exception) async => Result.error(exception),
    );
  }

  @override
  Future<Result<void>> resetPassword({
    required String token,
    required String password,
  }) async {
    final response = await networkClient.execute(
      ResetPasswordRequest(token: token, password: password),
    );
    return response.when(
      success: (_) async => const Result.success(null),
      error: (exception) async => Result.error(exception),
    );
  }

  @override
  Future<Result<AuthSessionResponse>> socialLogin(
    SocialAuthProvider provider, {
    Map<String, dynamic>? callbackParams,
  }) async {
    final response = await networkClient.execute(
      SocialAuthCallbackRequest(
        provider: provider,
        callbackParams: callbackParams,
      ),
    );
    return response.when(
      success: (session) async => Result.success(session),
      error: (exception) async => Result.error(exception),
    );
  }

  @override
  Future<Result<ResetPasscodeOtpResponse>> sendResetPasswordOtp(
    String phone,
  ) async {
    final request = ResetPasscodeOtpRequest(phone: phone);
    final response = await networkClient.execute(request);
    return response.when(
      success: (response) async => Result.success(response),
      error: (exception) async => Result.error(exception),
    );
  }

  @override
  Future<Result<void>> createNewPasscode(
    CreateNewPasscodeRequest request,
  ) async {
    final response = await networkClient.execute(
      CreateNewPasscodeRequest(
        passcode: request.passcode,
        confirm: request.confirm,
        token: request.token,
      ),
    );
    return response.when(
      success: (_) async => const Result.success(null),
      error: (exception) async => Result.error(exception),
    );
  }
}
