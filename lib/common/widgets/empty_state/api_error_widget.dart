import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:flutter/material.dart';

/// Reusable empty state widget for displaying API or Network errors.
class ApiErrorWidget extends StatelessWidget {
  const ApiErrorWidget({
    required this.message,
    this.icon = Icons.cloud_off_outlined,
    this.backgroundColor,
    super.key,
  });

  final String message;
  final IconData icon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor ?? Colors.grey.shade200,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 48, color: Colors.grey.shade400),
            SizedBox(height: context.dimensions.smallH),
            Text(
              message,
              textAlign: TextAlign.center,
              style: context.typo.bodyMedium.copyWith(
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
