import 'dart:async';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/http/app_exception.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/services/user_session_service.dart';
import 'package:koora_kick/common/services/user_session_status.dart';
import 'package:koora_kick/domain/value_objects/phone_number.dart';
import 'package:koora_kick/features/authentication/auth_strings.dart';
import 'package:koora_kick/features/authentication/data/repositories/auth_repository.dart';
import 'package:koora_kick/features/verification/otp/data/repository/otp_repository.dart';

import 'package:koora_kick/features/verification/otp/presentation/state/verify_phone_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:koora_kick/common/user/model/user.dart';

part 'verify_phone_view_model.g.dart';

@riverpod
class VerifyPhoneViewModel extends _$VerifyPhoneViewModel {
  static const int initialCountdown = 60;

  late final _otpRepository = ref.read(otpRepositoryProvider);
  late final _authRepository = ref.read(authRepositoryProvider);
  late final  _sessionService = ref.read(userSessionServiceProvider.notifier);

  @override
  VerifyPhoneState build() {
    _startCountdown();
    final sessionState = ref.watch(userSessionServiceProvider).value;
    
    if (sessionState is UnverifiedStatus) {
       Future.microtask(() => sendOtpCode(token: sessionState.token));
       return VerifyPhoneState(phoneNumber: PhoneNumber(number: sessionState.user.phone, countryCode: ''));
    }

    if (sessionState is ResettingPasscodeStatus) {
       // Code already sent via ResetPasscodeViewModel
       return VerifyPhoneState(phoneNumber: PhoneNumber(number: sessionState.phone.replaceFirst("+", ""), countryCode: ''));
    }

    return const VerifyPhoneState(phoneNumber: PhoneNumber(number: '', countryCode: ''));
  }

  Token? get _currentToken {
    final session = _sessionService.currentStatus;
    if (session is UnverifiedStatus) {
      return session.token;
    }
    if (session is ResettingPasscodeStatus) {
      return session.token;
    }
    return null;
  }


  Timer? _timer;

  void _startCountdown() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final next = state.secondsRemaining - 1;
      if (next <= 0) {
        timer.cancel();
        state = state.copyWith(verifyStatus: const VerifyPhoneStatus.initial(),
            secondsRemaining: 0, canResend: true);
      } else {
        state = state.copyWith(
          verifyStatus: const VerifyPhoneStatus.initial(),
          secondsRemaining: next,
        );
      }
    });
  }

  Future<void> sendOtpCode({required Token token}) async {
    state = state.copyWith(
      verifyStatus: const VerifyPhoneStatus.loading(),
      error: null,
      formError: null,
    );
    
    final session = _sessionService.currentStatus;
    final Result<String> result;

    if (session is ResettingPasscodeStatus) {
      final resetResult = await _authRepository.sendResetPasswordOtp(session.phone);
      result = resetResult.when(
        success: (response) => Result.success(response.token.raw!),
        error: Result.error,
      );
    } else {
      result = await _otpRepository.sendOtp(token: token.raw);
    }

    result.when(
      success: (token) {
        state = state.copyWith(
          verifyStatus: const VerifyPhoneStatus.sendOtpSuccess(),
        );
      },
      error: (exception) {
        _timer?.cancel();
        final message = exception.when(
          connectivity: () => 'connectivity_error',
          unauthorized: () => 'unauthorized_error',
          errorWithMessage: (msg) => msg,
          error: () => 'something_went_wrong',
          api: (message, statusCode, errors) {
            if (errors.isNotEmpty) {
              return errors.first.message;
            }
            return message;
          },
        );
        state = state.copyWith(
          verifyStatus: VerifyPhoneStatus.error(AppError.api(message: message)),
          error: AppError.api(message: message),
          formError: message,
          canResend: true,
          secondsRemaining: 0,
        );
      },
    );
  }


  void resendCode() {
    final token = _currentToken;
    if (token == null) {
      return;
    }

    if (!state.canResend) {
      return;
    }
    state = state.copyWith(
      verifyStatus: const VerifyPhoneStatus.initial(),
      secondsRemaining: initialCountdown,
      canResend: false,
    );
    _startCountdown();
    sendOtpCode(token: token);
  }

  Future<void> verifyCode(String code) async {
    final token = _currentToken;
    if (token == null) {
      state = state.copyWith(
          verifyStatus:  VerifyPhoneStatus.error(
              AppError.api(message:AuthStrings.somethingWentWrong.localized())),
          error:  AppError.api(message: AuthStrings.somethingWentWrong.localized()),
          formError: AuthStrings.somethingWentWrong.localized());
      return;
    }
    state = state.copyWith(
      verifyStatus: const VerifyPhoneStatus.loading(),
      error: null,
      formError: null,
    );
    final result = await _otpRepository.verifyOtp(code, token: token.raw);
    result.when(
      success: (response) async {
        final currentSession = _sessionService.currentStatus;
        final isResetPasscode = currentSession is ResettingPasscodeStatus;
        if (isResetPasscode) {
           _sessionService.resetPasscode(response.token, phone: currentSession.phone);
        } else {
           await _sessionService.saveToken(response.token);
        }
        state = state.copyWith(
            verifyStatus: VerifyPhoneStatus.verifyOtpSuccess(isResetPasscode: isResetPasscode),
            error: null);
      },
      error: (exception) {
        final message = exception.when(
          connectivity: () => 'connectivity_error',
          unauthorized: () => 'unauthorized_error',
          errorWithMessage: (msg) => msg,
          error: () => 'something_went_wrong',
          api: (message, statusCode, errors) {
            if (errors.isNotEmpty) {
              return errors.first.message;
            }
            return message;
          },
        );
        state = state.copyWith(
            verifyStatus: VerifyPhoneStatus.error(
                AppError.api(message: message)),
            error: AppError.api(message: message),
            formError: message);
      },
    );
  }
}

