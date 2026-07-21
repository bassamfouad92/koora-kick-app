// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread_detail_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$threadDetailViewModelHash() =>
    r'4122505ea5da6fcfba75adb95fd1a732aa04a770';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ThreadDetailViewModel
    extends BuildlessAutoDisposeNotifier<ThreadDetailState> {
  late final String threadId;

  ThreadDetailState build(String threadId);
}

/// See also [ThreadDetailViewModel].
@ProviderFor(ThreadDetailViewModel)
const threadDetailViewModelProvider = ThreadDetailViewModelFamily();

/// See also [ThreadDetailViewModel].
class ThreadDetailViewModelFamily extends Family<ThreadDetailState> {
  /// See also [ThreadDetailViewModel].
  const ThreadDetailViewModelFamily();

  /// See also [ThreadDetailViewModel].
  ThreadDetailViewModelProvider call(String threadId) {
    return ThreadDetailViewModelProvider(threadId);
  }

  @override
  ThreadDetailViewModelProvider getProviderOverride(
    covariant ThreadDetailViewModelProvider provider,
  ) {
    return call(provider.threadId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'threadDetailViewModelProvider';
}

/// See also [ThreadDetailViewModel].
class ThreadDetailViewModelProvider
    extends
        AutoDisposeNotifierProviderImpl<
          ThreadDetailViewModel,
          ThreadDetailState
        > {
  /// See also [ThreadDetailViewModel].
  ThreadDetailViewModelProvider(String threadId)
    : this._internal(
        () => ThreadDetailViewModel()..threadId = threadId,
        from: threadDetailViewModelProvider,
        name: r'threadDetailViewModelProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$threadDetailViewModelHash,
        dependencies: ThreadDetailViewModelFamily._dependencies,
        allTransitiveDependencies:
            ThreadDetailViewModelFamily._allTransitiveDependencies,
        threadId: threadId,
      );

  ThreadDetailViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.threadId,
  }) : super.internal();

  final String threadId;

  @override
  ThreadDetailState runNotifierBuild(covariant ThreadDetailViewModel notifier) {
    return notifier.build(threadId);
  }

  @override
  Override overrideWith(ThreadDetailViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: ThreadDetailViewModelProvider._internal(
        () => create()..threadId = threadId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        threadId: threadId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ThreadDetailViewModel, ThreadDetailState>
  createElement() {
    return _ThreadDetailViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ThreadDetailViewModelProvider && other.threadId == threadId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, threadId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ThreadDetailViewModelRef
    on AutoDisposeNotifierProviderRef<ThreadDetailState> {
  /// The parameter `threadId` of this provider.
  String get threadId;
}

class _ThreadDetailViewModelProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          ThreadDetailViewModel,
          ThreadDetailState
        >
    with ThreadDetailViewModelRef {
  _ThreadDetailViewModelProviderElement(super.provider);

  @override
  String get threadId => (origin as ThreadDetailViewModelProvider).threadId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
