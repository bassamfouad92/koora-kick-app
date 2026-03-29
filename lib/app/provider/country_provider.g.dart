// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$countryListHash() => r'4d2c8f9649de857f457fe4bbf37cdf04a58fba42';

/// See also [countryList].
@ProviderFor(countryList)
final countryListProvider = AutoDisposeProvider<List<CountryModel>>.internal(
  countryList,
  name: r'countryListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$countryListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CountryListRef = AutoDisposeProviderRef<List<CountryModel>>;
String _$countryNotifierHash() => r'67253cabfab5b36c49ccec494f22841ea2e6e924';

/// See also [CountryNotifier].
@ProviderFor(CountryNotifier)
final countryNotifierProvider =
    AsyncNotifierProvider<CountryNotifier, CountryState>.internal(
      CountryNotifier.new,
      name: r'countryNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$countryNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$CountryNotifier = AsyncNotifier<CountryState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
