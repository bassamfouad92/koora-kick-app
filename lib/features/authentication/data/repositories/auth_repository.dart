import 'package:koora_kick/common/http/network_client.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/repositories/token_repository.dart';
import 'package:koora_kick/features/authentication/data/requests/login_request.dart';
import 'package:koora_kick/features/authentication/data/requests/reset_passcode_otp_request.dart';
import 'package:koora_kick/features/authentication/data/requests/create_new_passcode_request.dart';
import 'package:koora_kick/features/authentication/data/response/login_response.dart';
import 'package:koora_kick/features/authentication/data/response/reset_passcode_otp_response.dart';
import 'package:koora_kick/features/authentication/domain/repositories/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider(AuthRepositoryImp.new);

class AuthRepositoryImp implements AuthRepository {
  AuthRepositoryImp(this._ref);

  late final networkClient = _ref.read(networkProvider);
  late final tokenRepository = _ref.read(tokenRepositoryProvider);

  final Ref _ref;

  @override
  Future<Result<LoginResponse>> login(LoginRequest request) async {
    final response = await networkClient.execute(request);
    return response.when(
      success: (user) async => Result.success(user),
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
