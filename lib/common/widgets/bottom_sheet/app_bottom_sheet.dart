import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/constants/app_size.dart';
import 'package:koora_kick/common/extensions/null_check.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:flutter/material.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({
    required this.child,
    super.key,
    this.title,
    this.pagePadding,
  });

  final String? title;
  final Widget child;
  final double? pagePadding;

  static Future<T?> show<T>({
    required BuildContext context,
    required Widget child,
    String? title,
    bool isScrollControlled = true,
    bool isEnableDrag = true,
    bool isDismissible = true,
    double? radius,
    double? pagePadding,
    bool useRootNavigator = false,
  }) {
    final sheetRadius = radius ?? context.dimensions.large;

    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: isScrollControlled,
      enableDrag: isEnableDrag,
      isDismissible: isDismissible,
      useRootNavigator: useRootNavigator,
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(sheetRadius)),
      ),
      builder: (_) =>
          AppBottomSheet(title: title, pagePadding: pagePadding, child: child),
    );
  }

  @override
  Widget build(BuildContext context) {
    final maxHeight = context.screenHeight * AppSize.bottomSheetMaxHeight;
    return Container(
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(context.dimensions.large),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: pagePadding ?? context.dimensions.pagePadding,
        vertical: context.dimensions.smallH,
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: maxHeight),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppImage.asset(AppAssets.bsLightIndicator).build(),
            title.let(
                  (title) => _title(context, title),
              orElse: () => const SizedBox.shrink(),
            ),
            Flexible(child: child),
          ],
        ),
      ),
    );
  }

  Widget _title(BuildContext context, String title) => Padding(
    padding: EdgeInsets.all(context.dimensions.large),
    child: Text(
      title,
      style: context.typo.headingLarge,
      textAlign: TextAlign.center,
    ),
  );
}