import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_theme_mode.freezed.dart';

@freezed
sealed class AppThemeMode with _$AppThemeMode {
  const factory AppThemeMode.light() = _Light;
  const factory AppThemeMode.dark() = _Dark;
}
