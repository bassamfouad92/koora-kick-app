import 'package:koora_kick/common/enum/guard_priority.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class GuardPolicy {
  const GuardPolicy(this.priority);
  final GuardPriority priority;
  Widget build(BuildContext context, WidgetRef ref, Widget next);
}