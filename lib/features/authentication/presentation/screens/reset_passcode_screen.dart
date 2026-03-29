import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/countries/domain/entities/country_model.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/null_check.dart';
import 'package:koora_kick/common/extensions/string.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/managers/loader_manager.dart';
import 'package:koora_kick/common/widgets/banner/banner_text.dart';
import 'package:koora_kick/common/widgets/page/koorakick_page_builder.dart';
import 'package:koora_kick/features/authentication/auth_strings.dart';
import 'package:koora_kick/features/authentication/presentation/states/reset_passcode_state.dart';
import 'package:koora_kick/features/authentication/presentation/view_models/reset_passcode_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koora_kick/routes/koorakick_routes.dart';

class ResetPasscodeScreen extends ConsumerStatefulWidget {
  const ResetPasscodeScreen({super.key});

  @override
  ConsumerState<ResetPasscodeScreen> createState() =>
      _ResetPasscodeScreenState();
}

class _ResetPasscodeScreenState extends ConsumerState<ResetPasscodeScreen> {
  final _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(resetPasscodeViewModelProvider);

    final Widget buildPhoneNumberField =
        AppInputField.phone(
              country: state.country,
              controller: _phoneNumberController,
              hintText:
                  state.country.exampleNumberMobileNational!.withoutLeadingZero,
            )
            .withOnTap(() => _showCountryPicker(context))
            .withOnChanged(
              (phoneNumber) => ref
                  .read(resetPasscodeViewModelProvider.notifier)
                  .inputPhoneNumber(phoneNumber),
            )
            .withError(state.formErrors.phoneNumber);

    final continueButton = AppButton.primary(
      AuthStrings.continueButton.localized(),
      onPressed: () =>
          ref.read(resetPasscodeViewModelProvider.notifier).sendOtp(),
    );

    final error = state.status.mapOrNull(error: (e) => e.error);

    final errorBanner = CustomBanner.danger(
      backgroundColor: context.colors.errorSubTitle,
      text: BannerText.subtextOnly(
        subtext: error?.generalMessage ?? '',
        subTextTitleColor: context.colors.error,
      ),
      leadingWidget: const AppImage(
        source: AppAssets.redWaring,
        type: ImageType.asset,
      ),
    ).gapBottom(context.dimensions.large);

    return KooraKickPageBuilder.withAppBar()
        .title(Text(AuthStrings.resetPasscodeTitle.localized(), style: context.typo.headingLarge))
        .content(
          Column(
            children: [
              if (error.isPresent && error!.generalMessage.isPresent)
                errorBanner,
              buildPhoneNumberField,
            ],
          ),
        )
        .withBottomContent(continueButton)
        .alignTo(CrossAxisAlignment.start)
        .scrollable()
        .listen<ResetPasscodeState>(resetPasscodeViewModelProvider, (
          context,
          ref,
          prev,
          next,
        ) {
          next.status.when(
            initial: () {},
            loading: () => context.showLoader(),
            success: (token) {
              context.hideLoader();
              const VerifyRoute().push(context);
            },
            error: (error) {
              context.hideLoader();
            },
          );
        });
  }

  void _showCountryPicker(BuildContext context) async {
    final pickedCountry = await AppBottomSheet.show<CountryModel>(
      context: context,
      title: AuthStrings.selectCountryCodeTitle.localized(),
      child: const CountryBottomSheet(),
    );

    if (pickedCountry.isPresent) {
      setState(_phoneNumberController.clear);
      ref
          .read(resetPasscodeViewModelProvider.notifier)
          .inputCountry(pickedCountry!);
    }
  }
}
