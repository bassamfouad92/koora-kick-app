import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:flutter/material.dart';

/// A reusable pull-to-refresh widget that follows the app's theme.
/// 
/// Wraps Flutter's built-in [RefreshIndicator] to provide a consistent
/// experience and clean API for client code.
class AppRefreshIndicator extends StatelessWidget {
  const AppRefreshIndicator({
    required this.onRefresh,
    required this.child,
    this.color,
    this.backgroundColor,
    super.key,
  });

  /// The callback that is called when the user pulls down.
  final Future<void> Function() onRefresh;

  /// The scrollable widget (usually a [ListView]) to be wrapped.
  final Widget child;

  /// The foreground color of the refresh indicator. Defaults to theme primary.
  final Color? color;

  /// The background color of the refresh indicator. Defaults to theme surface.
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return RefreshIndicator(
      onRefresh: onRefresh,
      color: color ?? colors.primary,
      backgroundColor: backgroundColor ?? colors.primary,
      // Increased displacement for better visibility with banners
      displacement: 40,
      notificationPredicate: (notification) => notification.depth == 0,
      child: child,
    );
  }
}
