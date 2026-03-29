import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:koora_kick/features/authentication/data/requests/create_new_passcode_request.dart';
import 'package:koora_kick/features/authentication/data/requests/login_request.dart';
import 'package:koora_kick/features/authentication/data/response/login_response.dart';
import 'package:koora_kick/features/authentication/data/response/reset_passcode_otp_response.dart';

abstract interface class AuthRepository {
  Future<Result<LoginResponse>> login(LoginRequest request);
  Future<Result<ResetPasscodeOtpResponse>> sendResetPasswordOtp(String phone);
  Future<Result<void>> createNewPasscode(CreateNewPasscodeRequest request);
}
