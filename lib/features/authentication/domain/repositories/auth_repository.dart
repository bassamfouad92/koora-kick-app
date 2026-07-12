import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/features/authentication/data/requests/create_new_passcode_request.dart';
import 'package:koora_kick/features/authentication/data/requests/login_request.dart';
import 'package:koora_kick/features/authentication/data/requests/social_auth_callback_request.dart';
import 'package:koora_kick/features/authentication/data/response/auth_session_response.dart';
import 'package:koora_kick/features/authentication/data/response/reset_passcode_otp_response.dart';

abstract interface class AuthRepository {
  Future<Result<AuthSessionResponse>> login(LoginRequest request);
  Future<Result<void>> forgotPassword(String email);
  Future<Result<void>> resetPassword({
    required String token,
    required String password,
  });
  Future<Result<AuthSessionResponse>> socialLogin(
    SocialAuthProvider provider, {
    Map<String, dynamic>? callbackParams,
  });

  // Legacy passcode flow (phone OTP) — kept until the old screens are removed.
  Future<Result<ResetPasscodeOtpResponse>> sendResetPasswordOtp(String phone);
  Future<Result<void>> createNewPasscode(CreateNewPasscodeRequest request);
}
