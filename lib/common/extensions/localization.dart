import 'package:easy_localization/easy_localization.dart';

extension LocalizedStringX on String {
  String localized() => this.tr();

  String localizedArgs(List<String> args) => this.tr(args: args);

  String pluralized(int value) => this.plural(value);
}
