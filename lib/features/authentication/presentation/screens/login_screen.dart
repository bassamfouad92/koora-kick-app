import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/null_check.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/managers/loader_manager.dart';
import 'package:koora_kick/common/theme/app_typography.dart';

import 'package:koora_kick/common/widgets/banner/banner_text.dart';
import 'package:koora_kick/features/authentication/auth_strings.dart';
import 'package:koora_kick/features/authentication/presentation/states/login_state.dart';

import 'package:koora_kick/features/authentication/presentation/view_models/login_view_model.dart';
import 'package:koora_kick/features/authentication/presentation/widget/social_login_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koora_kick/routes/koorakick_routes.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loginState = ref.watch(loginViewModelProvider);

    final Widget buildEmailField =
        AppInputField.text(
              controller: _emailController,
              hintText: AuthStrings.emailOrPhoneHint.localized(),
              labelText: AuthStrings.emailOrPhoneLabel.localized(),
              keyboardType: TextInputType.emailAddress,
            )
            .withOnChanged(
              (email) => ref
                  .read(loginViewModelProvider.notifier)
                  .inputEmail(email),
            )
            .withError(loginState.formErrors.email);

    final Widget buildPasswordField =
        AppInputField.text(
              controller: _passwordController,
              hintText: AuthStrings.passwordHint.localized(),
              labelText: AuthStrings.passwordLabel.localized(),
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
            .withOnChanged(
              (password) => ref
                  .read(loginViewModelProvider.notifier)
                  .inputPassword(password),
            )
            .withError(loginState.formErrors.password);

    final forgotPasswordLink = Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Text(
        AuthStrings.forgotPasswordButton.localized(),
        style: context.typo.bodyMedium.semiBold.copyWith(
          color: context.colors.textLink,
        ),
      ).onTap(() => const ForgotPasswordRoute().push(context)),
    );

    final loginButton = AppButton.primary(
      AuthStrings.logInButton.localized(),
      onPressed: _login,
    );

    final error = loginState.loginStatus.mapOrNull(error: (e) => e.error);

    final errorBanner = CustomBanner.danger(
      backgroundColor: context.colors.errorSubTitle,
      text: BannerText.subtextOnly(
        subtext: error.generalMessage,
        subTextTitleColor: context.colors.error,
      ),
      leadingWidget: AppImage.asset(AppAssets.redWaring).build(),
    ).gapBottom(context.dimensions.large);

    return KooraKickPageBuilder.withAppBar()
        .title(
          Text(
            AuthStrings.welcomeBackTitle.localized(),
            style: context.typo.headingLarge,
          ),
        )
        .subtitle(
          Text(
            AuthStrings.loginSubtitle.localized(),
            style: context.typo.bodyMedium.copyWith(
              color: context.colors.textSecondary,
            ),
          ).withPadding(EdgeInsets.only(top: context.dimensions.smallH)),
        )
        .content(
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (error.isPresent && error.generalMessage.isPresent)
                errorBanner,
              buildEmailField,
              SizedBox(height: context.dimensions.largeH),
              buildPasswordField,
              forgotPasswordLink.withPadding(
                EdgeInsets.only(top: context.dimensions.mediumH),
              ),
              loginButton.withPadding(
                EdgeInsets.only(top: context.dimensions.xLargeH),
              ),
              SocialLoginButtons(
                onPressed: (provider) => ref
                    .read(loginViewModelProvider.notifier)
                    .socialLogin(provider),
              ).withPadding(EdgeInsets.only(top: context.dimensions.xLargeH)),
            ],
          ),
        )
        .withBottomContent(_signUpPrompt(context))
        .alignTo(CrossAxisAlignment.start)
        .scrollable()
        .listen<LoginState>(loginViewModelProvider, (context, ref, prev, next) {
          next.loginStatus.maybeWhen(
            loading: () => context.showLoader(),
            success: (userSessionStatus) {
              context.hideLoader();
            },
            error: (error) {
              context.hideLoader();
            },
            orElse: () {
              context.hideLoader();
            },
          );
        });
  }

  Widget _signUpPrompt(BuildContext context) => [
        Text(
          AuthStrings.dontHaveAccount.localized(),
          style: context.typo.bodyMedium.copyWith(
            color: context.colors.textSecondary,
          ),
        ),
        Text(
          AuthStrings.signUp.localized(),
          style: context.typo.bodyMedium.semiBold.copyWith(
            color: context.colors.textLink,
          ),
        ).onTap(() => const SignupRoute().replace(context)),
      ].row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: context.dimensions.smallW,
      );

  void _login() {
    ref.read(loginViewModelProvider.notifier).login();
  }
}
