import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/managers/loader_manager.dart';
import 'package:koora_kick/common/widgets/input/app_pin_field.dart';
import 'package:koora_kick/features/security/widgets/pin_keyboard_widget.dart';
import 'package:koora_kick/common/services/session_reauth/session_auth_guard_view_model.dart';

import 'package:custom_pin_screen/custom_pin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SessionAuthGuardScreen extends ConsumerStatefulWidget {
  const SessionAuthGuardScreen({super.key, required this.message});

  final String message;

  @override
  ConsumerState<SessionAuthGuardScreen> createState() => _SessionReauthSheetState();
}

class _SessionReauthSheetState extends ConsumerState<SessionAuthGuardScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final SessionAuthGuardState state = ref.watch(sessionAuthGuardViewModelProvider);
    final SessionAuthGuardViewModel viewModel = ref.read(
      sessionAuthGuardViewModelProvider.notifier,
    );
    final colors = context.colors;
    final typo = context.typo;
    final dimensions = context.dimensions;

    ref.listen(sessionAuthGuardViewModelProvider, (prev, next) {
      next.status.when(
        idle: () {},
        loading: () => context.showLoader(),
        success: () {
          context.hideLoader();
          Navigator.pop(context, true);
        },
        error: (msg) {
          context.hideLoader();
          _controller.clear();
        },
      );
    });

    return PopScope(
      canPop: false,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: dimensions.mediumH),
            AppImage.asset(AppAssets.icLogout).build(),
            SizedBox(height: dimensions.largeH),
            Text(
              "Please log in again",
              style: typo.headingMedium,
              textAlign: TextAlign.center,
            ).withHorizontalPadding(dimensions.large),

            SizedBox(height: dimensions.xxLargeH),

            Directionality(
              textDirection: TextDirection.ltr,
              child: PinField.pin(controller: _controller)
                  .withAutoFocus(false)
                  .withError(state.formError)
                  .withOnChanged(viewModel.onPasscodeChanged)
                  .withOnCompleted((_) => viewModel.validatePasscode()),
            ),

            SizedBox(height: dimensions.largeH),

            /// 👇 KEY FIX
            Flexible(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: PinKeyboardWidget(
                  controller: _controller,
                  keysTextStyle: typo.headingExtraLarge,
                  specialKey: null,
                  // specialKey: state.biometricMethod.maybeWhen(
                  //   face: () => AppButton.icon(
                  //     AppImage(
                  //       source: AppAssets.icFaceIdSmall,
                  //       type: ImageType.asset,
                  //       color: colors.textPrimary,
                  //     ),
                  //     onPressed: viewModel.authenticateWithBiometrics,
                  //   ),
                  //   fingerprint: () => AppButton.icon(
                  //     AppImage(
                  //       source: AppAssets.icTouchIdSmall,
                  //       type: ImageType.asset,
                  //       color: colors.textPrimary,
                  //     ),
                  //     onPressed: viewModel.authenticateWithBiometrics,
                  //   ),
                  //   orElse: () => null,
                  // ),
                  pinTheme: PinTheme(
                    textColor: colors.textPrimary,
                    keysColor: colors.textPrimary,
                  ),
                  maxLength: 4,
                  onChanged: viewModel.onPasscodeChanged,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
