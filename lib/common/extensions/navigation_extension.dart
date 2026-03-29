import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension NavigationExtension on BuildContext {
  /// Safely pops the current route or dismisses a dialog/bottom sheet.
  /// 
  /// It first checks if [GoRouter] can pop. If so, it calls [pop()].
  /// If [GoRouter] cannot pop, it falls back to [Navigator.maybePop()] 
  /// which handles dismissing dialogs or overlays that are not managed by GoRouter.
  void safePop() {
    if (canPop()) {
      pop();
    } else if (Navigator.of(this).canPop()) {
      Navigator.of(this).pop();
    } else {
      go('/home');
    }
  }

  /// Forces a pop or dismiss regardless of the router state.
  /// Useful for closing overlays/dialogs explicitly.
  void dismiss() {
    Navigator.of(this).pop();
  }
}
