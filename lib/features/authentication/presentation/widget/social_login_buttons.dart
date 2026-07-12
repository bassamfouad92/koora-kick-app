import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/features/authentication/auth_strings.dart';
import 'package:koora_kick/features/authentication/data/requests/social_auth_callback_request.dart';
import 'package:flutter/material.dart';

/// "or continue with" divider followed by the Google and Apple buttons,
/// laid out per [axis] (login stacks them vertically, signup in a row).
class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({
    super.key,
    required this.onPressed,
    this.axis = Axis.vertical,
  });

  final ValueChanged<SocialAuthProvider> onPressed;
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    final google = _socialButton(
      context,
      provider: SocialAuthProvider.google,
      label: AuthStrings.googleButton.localized(),
      icon: AppImage.asset(AppAssets.icGoogle)
          .setDimension(
            width: context.dimensions.iconSizeMedium,
            height: context.dimensions.iconSizeMedium,
          )
          .build(),
    );

    final apple = _socialButton(
      context,
      provider: SocialAuthProvider.apple,
      label: AuthStrings.appleButton.localized(),
      icon: Icon(
        Icons.apple,
        color: context.colors.textPrimary,
        size: context.dimensions.iconSizeMedium,
      ),
    );

    final buttons = axis == Axis.vertical
        ? [
            google,
            apple,
          ].column(spacing: context.dimensions.mediumH)
        : [
            Expanded(child: google),
            SizedBox(width: context.dimensions.mediumW),
            Expanded(child: apple),
          ].row();

    return [
      _orContinueWithDivider(context),
      buttons,
    ].column(spacing: context.dimensions.largeH);
  }

  Widget _socialButton(
    BuildContext context, {
    required SocialAuthProvider provider,
    required String label,
    required Widget icon,
  }) =>
      AppButton.outline(
        label,
        onPressed: () => onPressed(provider),
        backgroundColor: context.colors.surface,
      ).withLeftIcon(icon);

  Widget _orContinueWithDivider(BuildContext context) => [
        Expanded(child: Divider(color: context.colors.divider)),
        Text(
          AuthStrings.orContinueWith.localized(),
          style: context.typo.bodySmall.copyWith(
            color: context.colors.textSecondary,
          ),
        ).withHorizontalPadding(context.dimensions.mediumW),
        Expanded(child: Divider(color: context.colors.divider)),
      ].row();
}
