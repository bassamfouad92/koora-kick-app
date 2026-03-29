import 'package:koora_kick/common/extensions/null_check.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/widgets/banner/banner_action.dart';
import 'package:koora_kick/common/widgets/banner/banner_text.dart';
import 'package:flutter/material.dart';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/common.dart';
import 'package:path/path.dart';

enum _BannerType { warning, info, danger }

class CustomBanner extends StatelessWidget {
  const CustomBanner({
    required this.text,
    super.key,
    this.backgroundColor,
    this.action,
    this.leadingWidget,
    this.type = _BannerType.info,
  });

  /// Factory Constructors
  factory CustomBanner.warning({
    required BannerText text,
    Key? key,
    BannerAction? action,
    Widget? leadingWidget,
    Color? backgroundColor,
  }) =>
      CustomBanner(
        key: key,
        backgroundColor: backgroundColor,
        text: text,
        action: action,
        leadingWidget: leadingWidget,
        type: _BannerType.warning,
      );

  factory CustomBanner.info({
    required BannerText text,
    Key? key,
    BannerAction? action,
    Widget? leadingWidget,
    Color? backgroundColor,
  }) =>
      CustomBanner(
        key: key,
        backgroundColor: backgroundColor,
        text: text,
        action: action,
        leadingWidget: leadingWidget,
        type: _BannerType.info,
      );

  factory CustomBanner.danger({
    required BannerText text,
    Key? key,
    BannerAction? action,
    Widget? leadingWidget,
    Color? backgroundColor,
    Color? textColor,
  }) =>
      CustomBanner(
        key: key,
        backgroundColor: backgroundColor,
        text: text,
        action: action,
        leadingWidget: leadingWidget,
        type: _BannerType.danger,
      );



  final Color? backgroundColor;
  final BannerText text;
  final BannerAction? action;
  final Widget? leadingWidget;
  final _BannerType type;



  /// ---------------------------
  /// Render BannerText based on type
  /// ---------------------------

  Widget _buildBannerText(BuildContext context) {
    final colors = context.colors;
    return switch (text) {
      TitleOnly(:final title, :final titleColor) =>
        AppText.bold14(title, color: titleColor ?? colors.textPrimary),
      SubtextOnly(:final subtext, :final subTextTitleColor) =>
        AppText.body14(subtext, color: subTextTitleColor ?? colors.textPrimary),
      TitleAndSubtext(:final title, :final subtext) => [
          AppText.bold16(title, color: colors.textPrimary),
          AppText.body14(subtext, color: colors.textSecondary),
        ].column(crossAxisAlignment: CrossAxisAlignment.start, spacing: 2),
      Rich(:final builder) => builder.build(
          baseStyle: AppTextStyle.textBody(14, textColor: colors.textPrimary),
        ),
    };
  }

  /// BannerAction
  Widget _buildTrailingAction() =>
      action?.letOrNull(
        (buttonAction) => AppButton.underline(
          buttonAction.text,
          onPressed: buttonAction.onTap,
        ).aligned(buttonAction.alignment),
      ) ??
      const SizedBox.shrink();

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final dimensions = context.dimensions;

    final effectiveBackgroundColor = backgroundColor ??
        switch (type) {
          _BannerType.warning => colors.bannerBackgroundWarning,
          _BannerType.info => colors.bannerBackgroundInfo,
          _BannerType.danger => colors.bannerBackgroundError,
        };

    final defaultLeading = switch (type) {
      _BannerType.warning || _BannerType.danger => const AppImage(
          source: AppAssets.warning,
          type: ImageType.asset,
        ),
      _BannerType.info => null,
    };

    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(dimensions.radiusSmall),
      ),
      color: effectiveBackgroundColor,
      child: IntrinsicHeight(
        child: [
          ...?(leadingWidget ?? defaultLeading)?.letOrNull((leadingView) => [
                leadingView.aligned(Alignment.center),
                SizedBox(width: dimensions.small),
              ]),
          Expanded(child: _buildBannerText(context)),
          _buildTrailingAction(),
        ].row(crossAxisAlignment: CrossAxisAlignment.start).withSymmetricPadding(
              vertical: dimensions.mediumH,
              horizontal: dimensions.mediumW,
            ),
      ),
    );
  }
}

class BannerApp extends StatelessWidget {
  const BannerApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Custom Banners',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        home: const HomePage(),
      );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _showSnackbar(BuildContext context, String action) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(action),
        duration: const Duration(milliseconds: 1500),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Dynamic Banners Example'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomBanner.warning(
                text: const BannerText.subtextOnly(
                  subtext:
                      "2 riders not checked in — they'll be marked as missed if you depart now.",
                ),
              ),
              const SizedBox(height: 20),

              CustomBanner.info(
                text: BannerText.rich(
                  AppRichTextBuilder(context)
                    ..add("In case of missing vehicle, ")
                    ..space()
                    ..link(
                      "contact supplier",
                      style: AppTextStyle.linkButton(
                          fontSize: 14, textColor: AppColors.neutral900),
                      onTap: () {
                        _showSnackbar(context, "Contact supplier tapped");
                      },
                    ),
                ),
              ),

              const SizedBox(height: 20),

              CustomBanner.danger(
                text: const BannerText.titleAndSubtext(
                  title: "Documents expiring soon",
                  subtext: "Update now to stay active.",
                ),
                action: BannerAction(
                  text: "Review",
                  onTap: () => {},
                ),
              ),
            ],
          ),
        ),
      );
}
