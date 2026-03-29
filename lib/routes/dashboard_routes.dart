part of 'koorakick_routes.dart';

class MainShellRouteData extends StatefulShellRouteData {
  const MainShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return MainScreen(navigationShell: navigationShell);
  }
}

class DashboardBranchData extends StatefulShellBranchData {
  const DashboardBranchData();
}

class ChannelsBranchData extends StatefulShellBranchData {
  const ChannelsBranchData();
}

class KooraMapBranchData extends StatefulShellBranchData {
  const KooraMapBranchData();
}

class LiveBranchData extends StatefulShellBranchData {
  const LiveBranchData();
}

class ProfileBranchData extends StatefulShellBranchData {
  const ProfileBranchData();
}

class DashboardRoute extends AppRouteData {
  const DashboardRoute();
  
  @override
  RouteAccess get access => RouteAccess.private;

  @override
  String get location => '/home';

  @override
  Widget build(BuildContext context, GoRouterState state) => const DashboardScreen();
}

class ChannelsRoute extends AppRouteData {
  const ChannelsRoute();
  
  @override
  RouteAccess get access => RouteAccess.public;

  @override
  String get location => '/channels';

  @override
  Widget build(BuildContext context, GoRouterState state) => const ChannelsScreen();
}

class KooraMapRoute extends AppRouteData {
  const KooraMapRoute();
  
  @override
  RouteAccess get access => RouteAccess.public;

  @override
  String get location => '/map';

  @override
  Widget build(BuildContext context, GoRouterState state) => const KooraMapScreen();
}

class LiveRoute extends AppRouteData {
  const LiveRoute();
  
  @override
  RouteAccess get access => RouteAccess.public;

  @override
  String get location => '/live';

  @override
  Widget build(BuildContext context, GoRouterState state) => const LiveScoresScreen();
}

class ProfileRoute extends AppRouteData {
  const ProfileRoute();

  @override
  RouteAccess get access => RouteAccess.public;

  @override
  String get location => '/profile';

  @override
  Widget build(BuildContext context, GoRouterState state) => const ProfileScreen();
}

class SettingsRoute extends AppRouteData {
  const SettingsRoute();

  @override
  RouteAccess get access => RouteAccess.public;

  @override
  String get location => '/profile/settings';

  @override
  Widget build(BuildContext context, GoRouterState state) => const SettingsScreen();
}

class LanguageRoute extends AppRouteData {
  const LanguageRoute();

  @override
  RouteAccess get access => RouteAccess.public;

  @override
  String get location => '/profile/language';

  @override
  Widget build(BuildContext context, GoRouterState state) => const LanguageScreen();
}