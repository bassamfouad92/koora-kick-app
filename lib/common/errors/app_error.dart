import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_error.freezed.dart';

@freezed
sealed class AppError with _$AppError {
  const factory AppError.formInvalid({
    required String field,
    required String message,
  }) = FormInvalidError;

  const factory AppError.api({
    required String message,
    int? code,
  }) = ApiError;

  const factory AppError.network() = NetworkError;
}

extension AppErrorX on AppError? {

  String get generalMessage => switch (this) {
    FormInvalidError() => '', // Don't show field errors in SnackBar
    ApiError(message: final message) => message,
    NetworkError() => 'Network error. Please check your connection.',
    _ => 'Something went wrong!',
  };

  String? fieldError(String field) {
    final self = this;
    return self is FormInvalidError && self.field == field ? self.message : null;
  }
}