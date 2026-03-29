import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:flutter/material.dart';

/// Reusable empty state widget for displaying when no data is available
class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({
    required this.message,
    this.icon,
    this.iconSize = 64.0,
    super.key,
  });

  final String message;
  final IconData? icon;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final typo = context.typo;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon ?? Icons.calendar_month_outlined,
            size: iconSize,
            color: colors.textSecondary,
          ),
          const SizedBox(height: 16),
          Text(
            message,
            style: typo.bodyMedium.copyWith(color: colors.textSecondary),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
