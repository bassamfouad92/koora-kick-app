import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:koora_kick/common/widgets/page/koorakick_page_builder.dart';

class StatusScreenViewHolder {
  const StatusScreenViewHolder({
    required this.icon,
    required this.title,
    required this.buttonText,
    required this.onButtonPressed,
    this.description,
    this.buttonType = AppButtonType.primary,
  }) : assert(buttonType != AppButtonType.icon,
            'AppButtonType.icon is not supported in StatusScreen as it requires text.');

  final Widget icon;

  final String title;

  final String? description;

  final String buttonText;

  final VoidCallback onButtonPressed;

  final AppButtonType buttonType;

  factory StatusScreenViewHolder.fake() => StatusScreenViewHolder(
        icon: AppImage.asset(AppAssets.success).setDimension(height: 80).build(),
        title: 'Success!',
        description: 'Your request has been processed successfully. You can now continue using the app.',
        buttonText: 'Continue',
        onButtonPressed: () {},
      );
}

/// A generic screen to display a status or message to the user.
///
/// It's configured using a [StatusScreenViewHolder].
class StatusScreen extends StatelessWidget {
  const StatusScreen({
    required this.viewModel,
    super.key,
    this.showAppBar = true,
  });

  final StatusScreenViewHolder viewModel;

  final bool showAppBar;

  @override
  Widget build(BuildContext context) {
    // Build the button widget from the view model based on the type.
    final Widget button = switch (viewModel.buttonType) {
      AppButtonType.primary => AppButton.primary(viewModel.buttonText,
          onPressed: viewModel.onButtonPressed),
      AppButtonType.secondary => AppButton.secondary(viewModel.buttonText,
          onPressed: viewModel.onButtonPressed),
      AppButtonType.outline => AppButton.outline(viewModel.buttonText,
          onPressed: viewModel.onButtonPressed),
      AppButtonType.text => AppButton.text(
          text: viewModel.buttonText, onPressed: viewModel.onButtonPressed),
      // AppButtonType.icon is disallowed by the view model's assertion and should not be used.
      AppButtonType.icon => const SizedBox.shrink(),
      AppButtonType.underline => AppButton.underline(viewModel.buttonText,
          onPressed: viewModel.onButtonPressed),
      AppButtonType.circular => const SizedBox.shrink(),
      AppButtonType.floating => const SizedBox.shrink(),
    };

    return KooraKickPageBuilder.withAppBar()
        .centered()
        .content([
          viewModel.icon,
          const SizedBox(height: 32),
          AppText.h3(viewModel.title),
          if (viewModel.description != null) ...[
            const SizedBox(height: 8),
            AppText.body14(viewModel.description!),
          ],
        ].column(crossAxisAlignment: CrossAxisAlignment.center))
        .withBottomContent(button);
  }
}
