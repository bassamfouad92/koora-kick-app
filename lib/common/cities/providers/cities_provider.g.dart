// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$citiesHash() => r'65655e49ab2bd28ac6d74fa085b78d1e0801e898';

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

/// Loads the cities of a country (`GET /locations/cities?countryId=`).
/// Watched by pickers such as `CityBottomSheet`; a new [countryId] creates
/// a fresh family entry, so switching country never shows stale cities.
///
/// Copied from [cities].
@ProviderFor(cities)
const citiesProvider = CitiesFamily();

/// Loads the cities of a country (`GET /locations/cities?countryId=`).
/// Watched by pickers such as `CityBottomSheet`; a new [countryId] creates
/// a fresh family entry, so switching country never shows stale cities.
///
/// Copied from [cities].
class CitiesFamily extends Family<AsyncValue<List<CityModel>>> {
  /// Loads the cities of a country (`GET /locations/cities?countryId=`).
  /// Watched by pickers such as `CityBottomSheet`; a new [countryId] creates
  /// a fresh family entry, so switching country never shows stale cities.
  ///
  /// Copied from [cities].
  const CitiesFamily();

  /// Loads the cities of a country (`GET /locations/cities?countryId=`).
  /// Watched by pickers such as `CityBottomSheet`; a new [countryId] creates
  /// a fresh family entry, so switching country never shows stale cities.
  ///
  /// Copied from [cities].
  CitiesProvider call({required String countryId}) {
    return CitiesProvider(countryId: countryId);
  }

  @override
  CitiesProvider getProviderOverride(covariant CitiesProvider provider) {
    return call(countryId: provider.countryId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'citiesProvider';
}

/// Loads the cities of a country (`GET /locations/cities?countryId=`).
/// Watched by pickers such as `CityBottomSheet`; a new [countryId] creates
/// a fresh family entry, so switching country never shows stale cities.
///
/// Copied from [cities].
class CitiesProvider extends AutoDisposeFutureProvider<List<CityModel>> {
  /// Loads the cities of a country (`GET /locations/cities?countryId=`).
  /// Watched by pickers such as `CityBottomSheet`; a new [countryId] creates
  /// a fresh family entry, so switching country never shows stale cities.
  ///
  /// Copied from [cities].
  CitiesProvider({required String countryId})
    : this._internal(
        (ref) => cities(ref as CitiesRef, countryId: countryId),
        from: citiesProvider,
        name: r'citiesProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$citiesHash,
        dependencies: CitiesFamily._dependencies,
        allTransitiveDependencies: CitiesFamily._allTransitiveDependencies,
        countryId: countryId,
      );

  CitiesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.countryId,
  }) : super.internal();

  final String countryId;

  @override
  Override overrideWith(
    FutureOr<List<CityModel>> Function(CitiesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CitiesProvider._internal(
        (ref) => create(ref as CitiesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        countryId: countryId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<CityModel>> createElement() {
    return _CitiesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CitiesProvider && other.countryId == countryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, countryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CitiesRef on AutoDisposeFutureProviderRef<List<CityModel>> {
  /// The parameter `countryId` of this provider.
  String get countryId;
}

class _CitiesProviderElement
    extends AutoDisposeFutureProviderElement<List<CityModel>>
    with CitiesRef {
  _CitiesProviderElement(super.provider);

  @override
  String get countryId => (origin as CitiesProvider).countryId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
