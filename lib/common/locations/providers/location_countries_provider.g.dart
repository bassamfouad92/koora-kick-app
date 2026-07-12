// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_countries_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$locationCountriesHash() => r'9c202a529d69110b51feb82eccffd336f5715420';

/// Loads the profile location countries (`GET /locations/countries`).
/// Watched by pickers such as `LocationCountryBottomSheet`; retry by
/// invalidating the provider.
///
/// Copied from [locationCountries].
@ProviderFor(locationCountries)
final locationCountriesProvider =
    AutoDisposeFutureProvider<List<LocationCountryModel>>.internal(
      locationCountries,
      name: r'locationCountriesProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$locationCountriesHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LocationCountriesRef =
    AutoDisposeFutureProviderRef<List<LocationCountryModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
