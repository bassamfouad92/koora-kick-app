import 'package:flutter/material.dart';

extension LanguageContextExtension on BuildContext {
  bool get isRtl => Directionality.of(this) == TextDirection.rtl;

  bool get isLtr => Directionality.of(this) == TextDirection.ltr;

  Locale get currentLocale => Localizations.localeOf(this);
}
