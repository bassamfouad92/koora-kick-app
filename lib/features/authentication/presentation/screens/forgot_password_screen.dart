import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/navigation_extension.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/managers/loader_manager.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/common/utils/snack_bar_utils.dart';
import 'package:koora_kick/features/authentication/auth_strings.dart';
import 'package:koora_kick/features/authentication/presentation/states/forgot_password_state.dart';
import 'package:koora_kick/features/authentication/presentation/view_models/forgot_password_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ForgotPasswordScreen extends ConsumerStatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  ConsumerState<ForgotPasswordScreen> createState() =>
      _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(forgotPasswordViewModelProvider);
    final notifier = ref.read(forgotPasswordViewModelProvider.notifier);

    final Widget buildEmailField =
        AppInputField.text(
              controller: _emailController,
              hintText: AuthStrings.emailOrPhoneHint.localized(),
              labelText: AuthStrings.emailOrPhoneLabel.localized(),
              keyboardType: TextInputType.emailAddress,
            )
            .withOnChanged(notifier.inputEmail)
            .withError(state.formErrors.email);

    return KooraKickPageBuilder.withAppBar()
        .title(
          Text(
            AuthStrings.forgotPasswordTitle.localized(),
            style: context.typo.headingLarge,
          ),
        )
        .subtitle(
          Text(
            AuthStrings.forgotPasswordSubtitle.localized(),
            style: context.typo.bodyMedium.copyWith(
              color: context.colors.textSecondary,
            ),
          ).withPadding(EdgeInsets.only(top: context.dimensions.smallH)),
        )
        .content(
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildEmailField,
              AppButton.primary(
                AuthStrings.sendResetLinkButton.localized(),
                onPressed: notifier.sendResetLink,
              ).withPadding(EdgeInsets.only(top: context.dimensions.xLargeH)),
            ],
          ),
        )
        .withBottomContent(_backToLogin(context))
        .alignTo(CrossAxisAlignment.start)
        .scrollable()
        .listen<ForgotPasswordState>(forgotPasswordViewModelProvider, (
          context,
          ref,
          prev,
          next,
        ) {
          next.status.maybeWhen(
            loading: () => context.showLoader(),
            success: () {
              context.hideLoader();
              SnackBarUtils.showSuccess(
                AuthStrings.resetLinkSentMessage.localized(),
              );
              context.safePop();
            },
            error: (error) {
              context.hideLoader();
              if (error.generalMessage.isNotEmpty) {
                SnackBarUtils.showError(error.generalMessage);
              }
            },
            orElse: () => context.hideLoader(),
          );
        });
  }

  Widget _backToLogin(BuildContext context) => Text(
        AuthStrings.backToLoginButton.localized(),
        style: context.typo.bodyMedium.semiBold.copyWith(
          color: context.colors.textLink,
        ),
      ).onTap(() => context.safePop());
}
