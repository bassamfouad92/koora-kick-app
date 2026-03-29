// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$languageNotifierHash() => r'58f69a151610113040134663476c5242aa3b1b78';

/// See also [LanguageNotifier].
@ProviderFor(LanguageNotifier)
final languageNotifierProvider =
    AutoDisposeAsyncNotifierProvider<LanguageNotifier, AppLanguage>.internal(
      LanguageNotifier.new,
      name: r'languageNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$languageNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$LanguageNotifier = AutoDisposeAsyncNotifier<AppLanguage>;
String _$appRestartNotifierHash() =>
    r'eb425b620b0357592dc1e2aae3fff346788c3709';

/// See also [AppRestartNotifier].
@ProviderFor(AppRestartNotifier)
final appRestartNotifierProvider =
    AutoDisposeNotifierProvider<AppRestartNotifier, bool>.internal(
      AppRestartNotifier.new,
      name: r'appRestartNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$appRestartNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$AppRestartNotifier = AutoDisposeNotifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
