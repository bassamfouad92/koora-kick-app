import 'package:flutter/widgets.dart';

class FocusHelper {
  FocusHelper._();

  static void unfocus(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  static void unfocusWithDelay(BuildContext context, {Duration delay = const Duration(milliseconds: 15)}) {
    Future.delayed(delay, () {
      if (context.mounted) {
        FocusScope.of(context).unfocus();
      }
    });
  }
}
