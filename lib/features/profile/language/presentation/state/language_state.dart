import 'package:koora_kick/common/enum/app_language_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_state.freezed.dart';

@freezed
sealed class LanguageItemState with _$LanguageItemState {
  const factory LanguageItemState.selected({
    required AppLanguage language,
    required String label,
  }) = SelectedLanguage;

  const factory LanguageItemState.unselected({
    required AppLanguage language,
    required String label,
  }) = UnselectedLanguage;
}

@freezed
sealed class LanguageState with _$LanguageState {
  const factory LanguageState({
    @Default([]) List<LanguageItemState> languages,
    @Default(false) bool isLoading,
    @Default(false) bool isSaving,
  }) = _LanguageState;
}
