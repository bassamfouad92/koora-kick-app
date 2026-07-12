// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'koorakick_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$appShellRoute, $splashRoute];

RouteBase get $appShellRoute => ShellRouteData.$route(
  factory: $AppShellRouteExtension._fromState,
  routes: [
    GoRouteData.$route(
      path: '/',

      factory: $LandingRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'login',

          factory: $LoginRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'verify',

          factory: $VerifyRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'signup',

          factory: $SignupRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'forgot-password',

          factory: $ForgotPasswordRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'reset-password',

          factory: $ResetPasswordRouteExtension._fromState,
        ),
      ],
    ),
    GoRouteData.$route(
      path: '/status',

      factory: $StatusRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/talker',

      factory: $TalkerRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/onboarding/interests',

      factory: $OnboardingInterestsRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/onboarding/watch-preference',

      factory: $WatchPreferenceRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/onboarding/all-set',

      factory: $AllSetRouteExtension._fromState,
    ),
    StatefulShellRouteData.$route(
      factory: $MainShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/home',

              factory: $DashboardRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/channels',

              factory: $ChannelsRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/map',

              factory: $KooraMapRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/live',

              factory: $LiveRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/profile',

              factory: $ProfileRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'settings',

                  factory: $SettingsRouteExtension._fromState,
                ),
                GoRouteData.$route(
                  path: 'language',

                  factory: $LanguageRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);

extension $AppShellRouteExtension on AppShellRoute {
  static AppShellRoute _fromState(GoRouterState state) => const AppShellRoute();
}

extension $LandingRouteExtension on LandingRoute {
  static LandingRoute _fromState(GoRouterState state) => const LandingRoute();

  String get location => GoRouteData.$location('/');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location('/login');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $VerifyRouteExtension on VerifyRoute {
  static VerifyRoute _fromState(GoRouterState state) => const VerifyRoute();

  String get location => GoRouteData.$location('/verify');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SignupRouteExtension on SignupRoute {
  static SignupRoute _fromState(GoRouterState state) => const SignupRoute();

  String get location => GoRouteData.$location('/signup');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ForgotPasswordRouteExtension on ForgotPasswordRoute {
  static ForgotPasswordRoute _fromState(GoRouterState state) =>
      const ForgotPasswordRoute();

  String get location => GoRouteData.$location('/forgot-password');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ResetPasswordRouteExtension on ResetPasswordRoute {
  static ResetPasswordRoute _fromState(GoRouterState state) =>
      ResetPasswordRoute(token: state.uri.queryParameters['token'] ?? '');

  String get location => GoRouteData.$location(
    '/reset-password',
    queryParams: {if (token != '') 'token': token},
  );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $StatusRouteExtension on StatusRoute {
  static StatusRoute _fromState(GoRouterState state) =>
      StatusRoute(state.extra as StatusScreenViewHolder);

  String get location => GoRouteData.$location('/status');

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $TalkerRouteExtension on TalkerRoute {
  static TalkerRoute _fromState(GoRouterState state) => const TalkerRoute();

  String get location => GoRouteData.$location('/talker');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OnboardingInterestsRouteExtension on OnboardingInterestsRoute {
  static OnboardingInterestsRoute _fromState(GoRouterState state) =>
      const OnboardingInterestsRoute();

  String get location => GoRouteData.$location('/onboarding/interests');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $WatchPreferenceRouteExtension on WatchPreferenceRoute {
  static WatchPreferenceRoute _fromState(GoRouterState state) =>
      const WatchPreferenceRoute();

  String get location => GoRouteData.$location('/onboarding/watch-preference');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AllSetRouteExtension on AllSetRoute {
  static AllSetRoute _fromState(GoRouterState state) => const AllSetRoute();

  String get location => GoRouteData.$location('/onboarding/all-set');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MainShellRouteDataExtension on MainShellRouteData {
  static MainShellRouteData _fromState(GoRouterState state) =>
      const MainShellRouteData();
}

extension $DashboardRouteExtension on DashboardRoute {
  static DashboardRoute _fromState(GoRouterState state) =>
      const DashboardRoute();

  String get location => GoRouteData.$location('/home');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ChannelsRouteExtension on ChannelsRoute {
  static ChannelsRoute _fromState(GoRouterState state) => const ChannelsRoute();

  String get location => GoRouteData.$location('/channels');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $KooraMapRouteExtension on KooraMapRoute {
  static KooraMapRoute _fromState(GoRouterState state) => const KooraMapRoute();

  String get location => GoRouteData.$location('/map');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LiveRouteExtension on LiveRoute {
  static LiveRoute _fromState(GoRouterState state) => const LiveRoute();

  String get location => GoRouteData.$location('/live');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileRouteExtension on ProfileRoute {
  static ProfileRoute _fromState(GoRouterState state) => const ProfileRoute();

  String get location => GoRouteData.$location('/profile');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location('/profile/settings');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LanguageRouteExtension on LanguageRoute {
  static LanguageRoute _fromState(GoRouterState state) => const LanguageRoute();

  String get location => GoRouteData.$location('/profile/language');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $splashRoute => GoRouteData.$route(
  path: '/splash',

  factory: $SplashRouteExtension._fromState,
);

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => const SplashRoute();

  String get location => GoRouteData.$location('/splash');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$goRouterHash() => r'f54c31334e7a7b7341627712aaa7d4031e0931bd';

/// See also [goRouter].
@ProviderFor(goRouter)
final goRouterProvider = AutoDisposeProvider<GoRouter>.internal(
  goRouter,
  name: r'goRouterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$goRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GoRouterRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
