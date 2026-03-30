import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/countries/domain/entities/country_model.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/null_check.dart';
import 'package:koora_kick/common/extensions/string.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/managers/loader_manager.dart';
import 'package:koora_kick/common/services/user_session_status.dart';
import 'package:koora_kick/common/theme/app_typography.dart';

import 'package:koora_kick/common/widgets/banner/banner_text.dart';
import 'package:koora_kick/common/widgets/page/koorakick_page_builder.dart';
import 'package:koora_kick/features/authentication/auth_strings.dart';
import 'package:koora_kick/features/authentication/presentation/states/login_state.dart';

import 'package:koora_kick/features/authentication/presentation/view_models/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koora_kick/routes/koorakick_routes.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _phoneNumberController = TextEditingController();
  final _passcodeController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loginState = ref.watch(loginViewModelProvider);

    final Widget buildPhoneNumberField =
        AppInputField.phone(
              country: loginState.country,
              controller: _phoneNumberController,
              hintText:
                  loginState
                      .country
                      .exampleNumberMobileNational
                      ?.withoutLeadingZero ??
                  "",
            )
            .withOnTap(() => _showCountryPicker(context))
            .withOnChanged(
              (phoneNumber) => ref
                  .read(loginViewModelProvider.notifier)
                  .inputPhoneNumber(phoneNumber),
            )
            .withError(loginState.formErrors.phoneNumber);

    final Widget buildPasswordField =
        AppInputField.text(
              controller: _passcodeController,
              hintText: AuthStrings.globalPasscode.localized(),
              // Keep localized key for now or update it
              labelText: AuthStrings.globalPasscode.localized(),
              obscureText: true,
            )
            .withOnChanged(
              (password) => ref
                  .read(loginViewModelProvider.notifier)
                  .inputPasscode(password),
            )
            .withError(loginState.formErrors.passcode);

    final loginButton = AppButton.primary(
      AuthStrings.continueButton.localized(),
      onPressed: _login,
    ).withPadding(EdgeInsets.only(top: context.dimensions.mediumH));

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
            AuthStrings.loginMainTitle.localized(),
            style: context.typo.headingLarge,
          ),
        )
        .content(
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (error.isPresent && error.generalMessage.isPresent)
                errorBanner,
              buildPhoneNumberField,
              SizedBox(height: context.dimensions.largeH),
              buildPasswordField,
              Text(
                    AuthStrings.forgotMyPassCodeButton.localized(),
                    style: context.typo.bodyMedium.semiBold,
                  )
                  .onTap(() => const ResetPasscodeRoute().push(context))
                  .withPadding(
                    EdgeInsets.only(top: context.dimensions.mediumH),
                  ),
            ],
          ),
        )
        .withBottomContent(loginButton)
        .alignTo(CrossAxisAlignment.start)
        .scrollable()
        .listen<LoginState>(loginViewModelProvider, (context, ref, prev, next) {
          next.loginStatus.maybeWhen(
            loading: () => context.showLoader(),
            success: (userSessionStatus) {
              context.hideLoader();
              if (userSessionStatus is UnverifiedStatus) {
                const VerifyRoute().pushReplacement(context);
              }
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

  void _login() {
    ref.read(loginViewModelProvider.notifier).login();
  }

  void _showCountryPicker(BuildContext context) async {
    final pickedCountry = await AppBottomSheet.show<CountryModel>(
      context: context,
      title: AuthStrings.selectCountryCodeTitle.localized(),
      child: const CountryBottomSheet(),
    );

    if (pickedCountry.isPresent) {
      setState(_phoneNumberController.clear);
      ref.read(loginViewModelProvider.notifier).inputCountry(pickedCountry!);
    }
  }
}
