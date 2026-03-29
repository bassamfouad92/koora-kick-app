import 'package:koora_kick/app/provider/language_provider.dart';
import 'package:koora_kick/common/enum/app_language_enum.dart';
import 'package:koora_kick/features/profile/language/presentation/state/language_state.dart';
import 'package:koora_kick/features/profile/profile_strings.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'language_view_model.g.dart';

@riverpod
class LanguageViewModel extends _$LanguageViewModel {
  @override
  LanguageState build() {
    final languageAsync = ref.watch(languageNotifierProvider);
    
    return languageAsync.when(
      data: (currentLang) => LanguageState(
        languages: AppLanguage.values.map((lang) {
          final label = lang == AppLanguage.english ? ProfileStrings.english : ProfileStrings.arabic;
          return lang == currentLang
              ? LanguageItemState.selected(language: lang, label: label)
              : LanguageItemState.unselected(language: lang, label: label);
        }).toList(),
      ),
      loading: () => const LanguageState(isLoading: true),
      error: (_, __) => const LanguageState(),
    );
  }

  void selectLanguage(AppLanguage language) {
    state = state.copyWith(
      languages: state.languages.map((item) {
        final lang = item.language;
        final label = item.label;
        return lang == language
            ? LanguageItemState.selected(language: lang, label: label)
            : LanguageItemState.unselected(language: lang, label: label);
      }).toList(),
    );
  }

  Future<void> saveLanguage({AppLanguage? selection}) async {
    final languageNotifier = ref.read(languageNotifierProvider.notifier);

    if (selection != null) {
      await languageNotifier.changeLanguageWithRestart(selection);
      return;
    }

    final selectedItem =
        state.languages.firstWhere((item) => item is SelectedLanguage);
    final language = selectedItem.language;

    // 2. Perform the global restart sequence
    await languageNotifier.changeLanguageWithRestart(language);
  }
}
