import 'dart:async';
import 'package:koora_kick/app/provider/language_provider.dart';
import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SwipeDisabledWithTimer extends ConsumerStatefulWidget {
  const SwipeDisabledWithTimer({
    required this.width,
    required this.height,
    required this.title,
    required this.duration,
    required this.thumb,
    this.onProgressFinished,
    super.key,
  });

  final double width;
  final double height;
  final String title;
  final Duration duration;
  final Widget thumb;
  final VoidCallback? onProgressFinished;

  @override
  ConsumerState<SwipeDisabledWithTimer> createState() => _SwipeDisabledWithTimerState();
}

class _SwipeDisabledWithTimerState extends ConsumerState<SwipeDisabledWithTimer> {
  late int remainingSeconds;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    _initTimer();
  }

  @override
  void didUpdateWidget(SwipeDisabledWithTimer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.duration.inSeconds != widget.duration.inSeconds) {
      _initTimer();
    }
  }

  void _initTimer() {
    timer?.cancel();
    remainingSeconds = widget.duration.inSeconds;
    if (remainingSeconds <= 0) {
      widget.onProgressFinished?.call();
      return;
    }

    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (remainingSeconds <= 0) {
        timer?.cancel();
        widget.onProgressFinished?.call();
      } else {
        if (mounted) {
          setState(() => remainingSeconds--);
        }
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isRTL = ref.watch(languageNotifierProvider.notifier).isRTL;
    return [
      Text(
        "${widget.title} ${_format(remainingSeconds)}",
        style: context.typo.bodyMedium.copyWith(color: Colors.white, fontWeight: FontWeight.w700),
      ).centered(),
      widget.thumb.positioned(left: isRTL ? null : 0, right: isRTL ? 0 : null), // thumb stays at left, disabled
    ].stacked();
  }

  String _format(int secs) {
    final minutes = (secs ~/ 60).toString().padLeft(2, '0');
    final seconds = (secs % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }
}
