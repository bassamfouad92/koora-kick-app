import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/managers/loader_manager.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/common/utils/snack_bar_utils.dart';
import 'package:koora_kick/features/authentication/auth_strings.dart';
import 'package:koora_kick/features/authentication/presentation/states/reset_password_state.dart';
import 'package:koora_kick/features/authentication/presentation/view_models/reset_password_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koora_kick/routes/koorakick_routes.dart';

class ResetPasswordScreen extends ConsumerStatefulWidget {
  const ResetPasswordScreen({super.key, required this.token});

  /// Reset token from the email deep link.
  final String token;

  @override
  ConsumerState<ResetPasswordScreen> createState() =>
      _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends ConsumerState<ResetPasswordScreen> {
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirm = true;

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(resetPasswordViewModelProvider);
    final notifier = ref.read(resetPasswordViewModelProvider.notifier);

    final Widget buildPasswordField =
        AppInputField.text(
              controller: _passwordController,
              hintText: AuthStrings.newPasswordHint.localized(),
              labelText: AuthStrings.newPasswordLabel.localized(),
              obscureText: _obscurePassword,
              actionButton: InputFieldActionButton(
                icon: Icon(
                  _obscurePassword
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: context.colors.textSecondary,
                ),
                onTap: () =>
                    setState(() => _obscurePassword = !_obscurePassword),
              ),
            )
            .withOnChanged(notifier.inputPassword)
            .withError(state.formErrors.password);

    final Widget buildConfirmField =
        AppInputField.text(
              controller: _confirmController,
              hintText: AuthStrings.confirmPasswordHint.localized(),
              labelText: AuthStrings.confirmPasswordLabel.localized(),
              obscureText: _obscureConfirm,
              actionButton: InputFieldActionButton(
                icon: Icon(
                  _obscureConfirm
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: context.colors.textSecondary,
                ),
                onTap: () =>
                    setState(() => _obscureConfirm = !_obscureConfirm),
              ),
            )
            .withOnChanged(notifier.inputConfirmPassword)
            .withError(state.formErrors.confirmPassword);

    return KooraKickPageBuilder.withAppBar()
        .title(
          Text(
            AuthStrings.resetPasswordTitle.localized(),
            style: context.typo.headingLarge,
          ),
        )
        .subtitle(
          Text(
            AuthStrings.resetPasswordSubtitle.localized(),
            style: context.typo.bodyMedium.copyWith(
              color: context.colors.textSecondary,
            ),
          ).withPadding(EdgeInsets.only(top: context.dimensions.smallH)),
        )
        .content(
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildPasswordField,
              if (state.strength != PasswordStrength.none)
                _StrengthIndicator(strength: state.strength).withPadding(
                  EdgeInsets.only(top: context.dimensions.smallH),
                ),
              buildConfirmField.withPadding(
                EdgeInsets.only(top: context.dimensions.largeH),
              ),
              AppButton.primary(
                AuthStrings.resetPasswordButton.localized(),
                onPressed: () => notifier.resetPassword(widget.token),
              ).withPadding(EdgeInsets.only(top: context.dimensions.xLargeH)),
            ],
          ),
        )
        .withBottomContent(_backToLogin(context))
        .alignTo(CrossAxisAlignment.start)
        .scrollable()
        .listen<ResetPasswordState>(resetPasswordViewModelProvider, (
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
                AuthStrings.resetPasswordSuccess.localized(),
              );
              const LoginRoute().go(context);
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
      ).onTap(() => const LoginRoute().go(context));
}

class _StrengthIndicator extends StatelessWidget {
  const _StrengthIndicator({required this.strength});

  final PasswordStrength strength;

  @override
  Widget build(BuildContext context) {
    final (progress, label, color) = switch (strength) {
      PasswordStrength.weak => (
          0.33,
          AuthStrings.passwordStrengthWeak.localized(),
          context.colors.error,
        ),
      PasswordStrength.medium => (
          0.66,
          AuthStrings.passwordStrengthMedium.localized(),
          context.colors.warning,
        ),
      _ => (
          1.0,
          AuthStrings.passwordStrengthStrong.localized(),
          context.colors.primary,
        ),
    };

    return [
      Expanded(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(context.dimensions.radiusSmall),
          child: LinearProgressIndicator(
            value: progress,
            minHeight: context.dimensions.h(4),
            backgroundColor: context.colors.border,
            valueColor: AlwaysStoppedAnimation(color),
          ),
        ),
      ),
      Text(
        label,
        style: context.typo.bodySmall.copyWith(color: color),
      ),
    ].row(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: context.dimensions.mediumW,
    );
  }
}
