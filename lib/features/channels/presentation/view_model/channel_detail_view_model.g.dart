// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_detail_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$channelDetailViewModelHash() =>
    r'4f31920430e986103ef9518c63b2a435f25725e8';

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

abstract class _$ChannelDetailViewModel
    extends BuildlessAutoDisposeNotifier<ChannelDetailState> {
  late final String channelId;

  ChannelDetailState build(String channelId);
}

/// See also [ChannelDetailViewModel].
@ProviderFor(ChannelDetailViewModel)
const channelDetailViewModelProvider = ChannelDetailViewModelFamily();

/// See also [ChannelDetailViewModel].
class ChannelDetailViewModelFamily extends Family<ChannelDetailState> {
  /// See also [ChannelDetailViewModel].
  const ChannelDetailViewModelFamily();

  /// See also [ChannelDetailViewModel].
  ChannelDetailViewModelProvider call(String channelId) {
    return ChannelDetailViewModelProvider(channelId);
  }

  @override
  ChannelDetailViewModelProvider getProviderOverride(
    covariant ChannelDetailViewModelProvider provider,
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
  String? get name => r'channelDetailViewModelProvider';
}

/// See also [ChannelDetailViewModel].
class ChannelDetailViewModelProvider
    extends
        AutoDisposeNotifierProviderImpl<
          ChannelDetailViewModel,
          ChannelDetailState
        > {
  /// See also [ChannelDetailViewModel].
  ChannelDetailViewModelProvider(String channelId)
    : this._internal(
        () => ChannelDetailViewModel()..channelId = channelId,
        from: channelDetailViewModelProvider,
        name: r'channelDetailViewModelProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$channelDetailViewModelHash,
        dependencies: ChannelDetailViewModelFamily._dependencies,
        allTransitiveDependencies:
            ChannelDetailViewModelFamily._allTransitiveDependencies,
        channelId: channelId,
      );

  ChannelDetailViewModelProvider._internal(
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
  ChannelDetailState runNotifierBuild(
    covariant ChannelDetailViewModel notifier,
  ) {
    return notifier.build(channelId);
  }

  @override
  Override overrideWith(ChannelDetailViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChannelDetailViewModelProvider._internal(
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
  AutoDisposeNotifierProviderElement<ChannelDetailViewModel, ChannelDetailState>
  createElement() {
    return _ChannelDetailViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChannelDetailViewModelProvider &&
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
mixin ChannelDetailViewModelRef
    on AutoDisposeNotifierProviderRef<ChannelDetailState> {
  /// The parameter `channelId` of this provider.
  String get channelId;
}

class _ChannelDetailViewModelProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          ChannelDetailViewModel,
          ChannelDetailState
        >
    with ChannelDetailViewModelRef {
  _ChannelDetailViewModelProviderElement(super.provider);

  @override
  String get channelId => (origin as ChannelDetailViewModelProvider).channelId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
