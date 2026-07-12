part of 'koorakick_routes.dart';

class OnboardingInterestsRoute extends AppRouteData {
  const OnboardingInterestsRoute();

  @override
  RouteAccess get access => RouteAccess.private;

  @override
  String get location => '/onboarding/interests';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const InterestsScreen();
}

class WatchPreferenceRoute extends AppRouteData {
  const WatchPreferenceRoute();

  @override
  RouteAccess get access => RouteAccess.private;

  @override
  String get location => '/onboarding/watch-preference';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const WatchPreferenceScreen();
}

class AllSetRoute extends AppRouteData {
  const AllSetRoute();

  @override
  RouteAccess get access => RouteAccess.private;

  @override
  String get location => '/onboarding/all-set';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AllSetScreen();
}
