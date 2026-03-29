import 'package:koora_kick/app/provider/country_provider.dart';
import 'package:koora_kick/common/countries/domain/entities/country_model.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/http/app_exception.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/services/user_session_service.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/domain/value_objects/phone_number.dart';
import 'package:koora_kick/features/authentication/auth_strings.dart';
import 'package:koora_kick/features/authentication/data/repositories/auth_repository.dart';
import 'package:koora_kick/features/authentication/presentation/states/reset_passcode_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reset_passcode_view_model.g.dart';

@riverpod
class ResetPasscodeViewModel extends _$ResetPasscodeViewModel {
  @override
  ResetPasscodeState build() => ref.watch(countryNotifierProvider).when(
        data: (countryState) => ResetPasscodeState(
          country: countryState.defaultCountry,
          phoneNumber: PhoneNumber(
            number: '',
            countryCode: countryState.defaultCountry.displayCode,
          ),
        ),
        loading: () => const ResetPasscodeState(
          status: ResetPasscodeStatus.loading(),
        ),
        error: (error, stack) => const ResetPasscodeState(),
      );

  late final _authRepository = ref.read(authRepositoryProvider);
  late final _sessionService = ref.read(userSessionServiceProvider.notifier);

  void inputPhoneNumber(String phoneNumber) {
    state = state.copyWith(
      status: const ResetPasscodeStatus.initial(),
      phoneNumber: state.phoneNumber.copyWith(number: phoneNumber),
      formErrors: state.formErrors.copyWith(phoneNumber: null),
    );
  }

  void inputCountry(CountryModel country) {
    state = state.copyWith(
      country: country,
      phoneNumber: state.phoneNumber.copyWith(countryCode: country.displayCode),
    );
  }

  Future<void> sendOtp() async {
    if (state.phoneNumber.number.isEmpty) {
      state = state.copyWith(
        formErrors: const ResetPasscodeFormErrors(phoneNumber: 'Phone number is required'),
      );
      return;
    }

    state = state.copyWith(status: const ResetPasscodeStatus.loading());

    final result = await _authRepository.sendResetPasswordOtp(state.phoneNumber.fullNumber);

    result.when(
      success: (response) {
        _sessionService.resetPasscode(
          response.token,
          phone: state.phoneNumber.fullNumber,
        );
        state = state.copyWith(
          status: ResetPasscodeStatus.success(token: response.token),
        );
      },
      error: (exception) {
        final appError = exception.when(
          connectivity: () => const AppError.network(),
          unauthorized: () => const AppError.api(message: 'Unauthorized'),
          errorWithMessage: (msg) => AppError.api(message: msg),
          error: () => AppError.api(message: AuthStrings.errorSendOtpFailed.localized()),
          api: (message, statusCode, errors) {
            if (errors.isNotEmpty) {
              final formErrors = ResetPasscodeFormErrors.fromApi(errors);
              state = state.copyWith(formErrors: formErrors);
              return AppError.formInvalid(
                field: errors.first.key ?? '',
                message: errors.first.message,
              );
            }
            return AppError.api(message: message, code: statusCode);
          },
        );
        state = state.copyWith(status: ResetPasscodeStatus.error(appError));
      },
    );
  }
}
