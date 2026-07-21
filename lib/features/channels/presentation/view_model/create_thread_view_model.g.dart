// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_thread_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createThreadViewModelHash() =>
    r'2eb6cebb687848e177ba49a0a97c34f4e62a136a';

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

abstract class _$CreateThreadViewModel
    extends BuildlessAutoDisposeNotifier<CreateThreadState> {
  late final String channelId;

  CreateThreadState build(String channelId);
}

/// See also [CreateThreadViewModel].
@ProviderFor(CreateThreadViewModel)
const createThreadViewModelProvider = CreateThreadViewModelFamily();

/// See also [CreateThreadViewModel].
class CreateThreadViewModelFamily extends Family<CreateThreadState> {
  /// See also [CreateThreadViewModel].
  const CreateThreadViewModelFamily();

  /// See also [CreateThreadViewModel].
  CreateThreadViewModelProvider call(String channelId) {
    return CreateThreadViewModelProvider(channelId);
  }

  @override
  CreateThreadViewModelProvider getProviderOverride(
    covariant CreateThreadViewModelProvider provider,
  ) {
    return call(provider.channelId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createThreadViewModelProvider';
}

/// See also [CreateThreadViewModel].
class CreateThreadViewModelProvider
    extends
        AutoDisposeNotifierProviderImpl<
          CreateThreadViewModel,
          CreateThreadState
        > {
  /// See also [CreateThreadViewModel].
  CreateThreadViewModelProvider(String channelId)
    : this._internal(
        () => CreateThreadViewModel()..channelId = channelId,
        from: createThreadViewModelProvider,
        name: r'createThreadViewModelProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$createThreadViewModelHash,
        dependencies: CreateThreadViewModelFamily._dependencies,
        allTransitiveDependencies:
            CreateThreadViewModelFamily._allTransitiveDependencies,
        channelId: channelId,
      );

  CreateThreadViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.channelId,
  }) : super.internal();

  final String channelId;

  @override
  CreateThreadState runNotifierBuild(covariant CreateThreadViewModel notifier) {
    return notifier.build(channelId);
  }

  @override
  Override overrideWith(CreateThreadViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: CreateThreadViewModelProvider._internal(
        () => create()..channelId = channelId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        channelId: channelId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<CreateThreadViewModel, CreateThreadState>
  createElement() {
    return _CreateThreadViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateThreadViewModelProvider &&
        other.channelId == channelId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, channelId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateThreadViewModelRef
    on AutoDisposeNotifierProviderRef<CreateThreadState> {
  /// The parameter `channelId` of this provider.
  String get channelId;
}

class _CreateThreadViewModelProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          CreateThreadViewModel,
          CreateThreadState
        >
    with CreateThreadViewModelRef {
  _CreateThreadViewModelProviderElement(super.provider);

  @override
  String get channelId => (origin as CreateThreadViewModelProvider).channelId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
