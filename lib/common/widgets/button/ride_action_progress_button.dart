import 'package:koora_kick/app/provider/language_provider.dart';
import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RideActionProgressButton extends ConsumerStatefulWidget {
  const RideActionProgressButton({
    required this.width,
    required this.height,
    required this.progressDuration,
    required this.progressTimerText,
    required this.cancelButtonText,
    required this.activeColor,
    required this.onCancel,
    this.onFinished,
    super.key,
  });

  final double width;
  final double height;
  final Duration progressDuration;
  final String progressTimerText;
  final String cancelButtonText;
  final Color activeColor;
  final VoidCallback onCancel;
  final VoidCallback? onFinished;

  @override
  ConsumerState<RideActionProgressButton> createState() =>
      _RideActionProgressBarState();
}

class _RideActionProgressBarState
    extends ConsumerState<RideActionProgressButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.progressDuration,
    )..addListener(() {
        setState(() {});
        if (_controller.status == AnimationStatus.completed) {
          widget.onFinished?.call();
        }
      });

    _controller.forward(from: 0.0);
  }

  @override
  void didUpdateWidget(RideActionProgressButton oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.progressDuration != widget.progressDuration) {
      _controller.duration = widget.progressDuration;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isRTL = ref.watch(languageNotifierProvider.notifier).isRTL;

    const double stopButtonWidth = 60.0;
    final double dividerWidth = isRTL ? 4.0 : 6.0;

    final progressMaxWidth = widget.width - stopButtonWidth - dividerWidth;
    final value = _controller.value.clamp(0.0, 1.0);

    final remaining = widget.progressDuration * (1.0 - value);
    final remainingSeconds = remaining.inSeconds;
    final buttonTitle =
        "${widget.progressTimerText} $remainingSeconds ${"global_seconds".tr()}";

    final progressFilled = Container(
      width: progressMaxWidth * value,
      height: widget.height,
      color: context.colors.progressFilled,
    );

    final divider = VerticalDivider(
      color: const Color(0xFFFAFAFA).withOpacity(0.5),
      thickness: 2,
    );

    final cancelButton = Container(
      height: widget.height,
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        left: isRTL ? context.dimensions.medium : context.dimensions.small,
        right: isRTL ? context.dimensions.small : context.dimensions.medium,
      ),
      child: Text(
        widget.cancelButtonText,
        style: context.typo.bodyMedium.copyWith(
          color: context.colors.surface,
          fontWeight: FontWeight.w700,
        ),
      ),
    );

    return ClipRRect(
      borderRadius: BorderRadius.circular(widget.height / 2),
      child: Stack(
        children: [
          // Conditionally align progress bar based on RTL
          Positioned(
            top: 0,
            bottom: 0,
            left: isRTL ? null : 0,
            right: isRTL ? 0 : null,
            child: progressFilled,
          ),

          IntrinsicHeight(
            child: [
              Text(
                buttonTitle,
                style: context.typo.bodyMedium.copyWith(
                  color: context.colors.surface,
                  fontWeight: FontWeight.w700,
                ),
              ).centered().expanded(),
              divider,
              cancelButton.onTap(() {
                _controller.stop();
                widget.onCancel();
              }),
            ].row(),
          ),
        ],
      ),
    );
  }
}
