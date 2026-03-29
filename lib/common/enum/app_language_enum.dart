import 'dart:ui';

enum AppLanguage {
  english(Locale('en', 'US'), 'en'),
  arabic(Locale('ar', 'AE'), 'ar');

  final Locale locale;
  final String code;

  const AppLanguage(this.locale, this.code);

  static AppLanguage fromCode(String code) => AppLanguage.values.firstWhere(
      (lang) => lang.code == code,
      orElse: () => AppLanguage.english,
    );

  static List<Locale> get supportedLocales =>
      AppLanguage.values.map((e) => e.locale).toList();

  Locale get asLocale => locale;
}

extension AppLanguageLabel on AppLanguage {
  String localizedLabel() => switch (this) {
    AppLanguage.english => 'English',
    AppLanguage.arabic => 'العربية',
  };
}
