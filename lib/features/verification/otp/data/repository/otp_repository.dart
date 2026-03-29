import 'package:koora_kick/common/http/network_client.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/repositories/token_repository.dart';
import 'package:koora_kick/common/services/user_session_service.dart';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:koora_kick/features/verification/otp/data/request/sent_otp_request.dart';
import 'package:koora_kick/features/verification/otp/data/request/verify_otp_request.dart';
import 'package:koora_kick/features/verification/otp/data/response/verify_otp_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract interface class OtpRepositoryProtocol {
  Future<Result<String>> sendOtp({String? token});
  Future<Result<VerifyOtpResponse>> verifyOtp(String code, {String? token});
}

final otpRepositoryProvider = Provider(OtpRepository.new);

class OtpRepository implements OtpRepositoryProtocol {
  OtpRepository(this._ref);
  final Ref _ref;

  late final _networkClient = _ref.read(networkProvider);
  late final UserSessionService _sessionService = _ref.read(userSessionServiceProvider.notifier);
  @override
  Future<Result<String>> sendOtp({String? token}) async {
    final sentOtpResponse = await _networkClient.execute(
        SentOtpRequest(token: token));
    return sentOtpResponse.when(success: (token) async => Result.success(token),
      error: (exception) async => Result.error(exception),);
  }

  @override
  Future<Result<VerifyOtpResponse>> verifyOtp(String code, {String? token}) async {
    final verifyOtpResponse = await _networkClient.execute(
        VerifyOtpRequest(code: code, token: token));
    return verifyOtpResponse.when(
      success: (response) async {
        return Result.success(response);
      },
      error: (exception) async => Result.error(exception),);
  }
}


