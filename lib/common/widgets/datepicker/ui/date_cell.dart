import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/common/widgets/datepicker/ui/indicator_widget.dart';
import 'package:koora_kick/common/widgets/text/app_texts.dart';
import 'package:koora_kick/utils/date_utils.dart';
import 'package:flutter/material.dart';

class DateCell extends StatelessWidget {
  const DateCell({
    required this.date,
    required this.hasEvent,
    required this.isSelected,
    required this.isToday,
    required this.onTap,
    super.key,
  });

  final DateTime date;
  final bool hasEvent;
  final bool isSelected;
  final bool isToday;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final dimensions = context.dimensions;
    const itemWidth = 40.0;

    final bgColor = isSelected ? colors.textPrimary : colors.border;
    final numberColor = isSelected ? colors.textDisabled : colors.textPrimary;
    final indicatorColor = isSelected ? colors.textInverse : colors.textPrimary;

    return SizedBox(
      width: itemWidth,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: onTap,
            customBorder: const CircleBorder(),
            child: Container(
              width: itemWidth,
              height: 40.0,
              decoration: BoxDecoration(
                color: bgColor,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    date.day.toString(),
                    style: context.typo.bodyMedium.semiBold.copyWith(
                      color: numberColor,
                    ),
                  ),
                  if (hasEvent) ...[
                    SizedBox(height: dimensions.h(2)),
                    IndicatorWidget.line(
                      color: indicatorColor,
                      thickness: dimensions.h(2),
                      size: dimensions.w(12),
                    ),
                  ],
                ],
              ),
            ),
          ),
          SizedBox(height: dimensions.smallH),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: AppText(
              date.weekday.toWeekShortName(context: context),
              style: context.typo.bodySmall.bold,
            ),
          ),
        ],
      ),
    );
  }
}
