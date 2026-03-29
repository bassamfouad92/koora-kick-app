import 'package:koora_kick/common/app_guard/guard_policy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppGuard extends ConsumerWidget {

  const AppGuard({
    required this.child,
    required this.policies,
    super.key,
  });
  final Widget child;
  final List<GuardPolicy> policies;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final sortedPolicies = List<GuardPolicy>.from(policies)
      ..sort((a,b) => a.priority.compareTo(b.priority));

    Widget currentWidget = child;

    for(final policy in sortedPolicies.reversed) {
      currentWidget = policy.build(context, ref, currentWidget);
    }
    return currentWidget;
  }
}
