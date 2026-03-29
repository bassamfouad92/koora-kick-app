import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:flutter/material.dart';

class AppProgressLoader extends StatelessWidget {
  const AppProgressLoader({
    required this.title,
    this.subtitle,
    super.key,
  });

  final String title;
  final String? subtitle;

  static void show(BuildContext context, String title, {String? subtitle}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      useRootNavigator: true,
      builder: (context) => AppProgressLoader(
        title: title,
        subtitle: subtitle,
      ),
    );
  }

  static void hide(BuildContext context) {
    final navigator = Navigator.of(context, rootNavigator: true);
    if (navigator.canPop()) {
      navigator.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Center(
        child: Container(
          width: context.dimensions.w(327),
          padding: EdgeInsets.symmetric(
            vertical: context.dimensions.largeH,
            horizontal: context.dimensions.mediumW,
          ),
          decoration: BoxDecoration(
            color: context.colors.surface,
            borderRadius: BorderRadius.circular(context.dimensions.medium),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(
                valueColor:
                    AlwaysStoppedAnimation<Color>(context.colors.primary),
                strokeWidth: 3,
              ),
              SizedBox(height: context.dimensions.largeH),
              Text(
                title,
                textAlign: TextAlign.center,
                style: context.typo.bodyLarge.bold
                    .withColor(context.colors.textPrimary),
              ),
              if (subtitle != null) ...[
                SizedBox(height: context.dimensions.smallH),
                Text(
                  subtitle!,
                  textAlign: TextAlign.center,
                  style: context.typo.bodySmall.regular
                      .withColor(context.colors.textSecondary),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
