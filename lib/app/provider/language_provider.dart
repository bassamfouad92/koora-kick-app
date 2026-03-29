import 'package:koora_kick/common/storage/storage_providers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:koora_kick/common/enum/app_language_enum.dart';

part 'language_provider.g.dart';

const _localeKey = 'selected_locale_code';

@riverpod
class LanguageNotifier extends _$LanguageNotifier {
  @override
  Future<AppLanguage> build() async {
    final prefs = ref.watch(sharedPreferencesProvider);
    final savedLang = prefs.getString(_localeKey);
    return AppLanguage.fromCode(savedLang ?? 'en');
  }

  Future<void> changeLanguage(AppLanguage newLang) async {
    state = AsyncValue.data(newLang);
    final prefs = ref.read(sharedPreferencesProvider);
    await prefs.setString(_localeKey, newLang.code);
  }

  Future<void> changeLanguageWithRestart(AppLanguage newLang) async {
    final restartNotifier = ref.read(appRestartNotifierProvider.notifier);
    
    // 1. Show splash/Loading screen
    restartNotifier.restart();

    // 2. Change language
    await changeLanguage(newLang);

    // 3. Wait for assets and engine to settle
    await Future.delayed(const Duration(milliseconds: 1200));

    // 4. Reset restart flag to show the app again
    restartNotifier.ready();
  }

  AppLanguage toggleLanguage(AppLanguage current) =>
      current == AppLanguage.english ? AppLanguage.arabic : AppLanguage.english;

  /// Returns the current language if loaded, otherwise defaults to English
  AppLanguage get currentLanguage => state.value ?? AppLanguage.english;

  /// Helper: check if current language is Arabic
  bool get isArabic => currentLanguage == AppLanguage.arabic;

  /// Helper: check if current language is RTL
  bool get isRTL => isArabic; // currently only Arabic is RTL
}

@riverpod
class AppRestartNotifier extends _$AppRestartNotifier {
  @override
  bool build() => false;

  void restart() => state = true;
  void ready() => state = false;
}

