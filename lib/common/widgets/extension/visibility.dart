import 'package:flutter/material.dart';

extension WidgetVisibilityExtensions on Widget {
  /// Shows the widget only if [visible] is true, removes from layout if false
  Widget visible(bool visible) => visible ? this : const SizedBox.shrink();

  /// Hides the widget but keeps its space
  Widget invisible(bool invisible) => Visibility(
    visible: !invisible,
    maintainSize: true,
    maintainAnimation: true,
    maintainState: true,
    child: this,
  );

  /// Completely removes the widget from layout (alias of visible(false))
  Widget gone() => const SizedBox.shrink();
}
