import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef KooraKickListener<T> = void Function(
    BuildContext context, WidgetRef ref, T? previous, T next);

class ListeningWrapper<T> extends ConsumerWidget {
  const ListeningWrapper({required this.builder, required this.provider, required this.listener, super.key});

  final Widget Function(BuildContext context) builder;
  final ProviderBase<T> provider;
  final KooraKickListener<T> listener;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<T>(provider, (prev, next) {
      listener(context, ref, prev, next);
    });

    return builder(context);
  }
}