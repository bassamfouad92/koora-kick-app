import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/extensions/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CircularBackButton extends ConsumerWidget {
  const CircularBackButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.colors.surface,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.24),
              blurRadius: 4,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: CircleAvatar(
          backgroundColor: context.colors.surface,
          child: AppButton.icon(
            AppImage.asset(AppAssets.leftArrow).setStyle(AppImageStyle(color: context.colors.textPrimary)).build(),
            onPressed: () => context.safePop(),
          ),
        ),
      );
}
