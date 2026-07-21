import 'package:koora_kick/app/provider/language_provider.dart';
import 'package:koora_kick/app/provider/splash_provider.dart';
import 'package:koora_kick/common/deeplink/deeplink_manager.dart';
import 'package:koora_kick/common/app_guard/app_guard.dart';
import 'package:koora_kick/utils/logger/app_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:koora_kick/common/widgets/screen/status_screen.dart';
import 'package:koora_kick/features/authentication/presentation/screens/forgot_password_screen.dart';
import 'package:koora_kick/features/authentication/presentation/screens/reset_password_screen.dart';
import 'package:koora_kick/features/channels/presentation/screen/channel_detail_screen.dart';
import 'package:koora_kick/features/channels/presentation/screen/create_thread_screen.dart';
import 'package:koora_kick/features/channels/presentation/screen/thread_detail_screen.dart';
import 'package:koora_kick/features/dashboard/presentation/screen/dashboard_screen.dart';
import 'package:koora_kick/features/dashboard/presentation/screen/channels_screen.dart';
import 'package:koora_kick/features/koora_map/presentation/screen/koora_map_screen.dart';
import 'package:koora_kick/features/dashboard/presentation/screen/live_scores_screen.dart';
import 'package:koora_kick/features/dashboard/presentation/screen/main_screen.dart';
import 'package:koora_kick/features/profile/presentation/screen/profile_screen.dart';
import 'package:koora_kick/features/profile/settings/presentation/screen/settings_screen.dart';
import 'package:koora_kick/features/profile/language/presentation/screen/language_screen.dart';
import 'package:koora_kick/features/authentication/presentation/screens/login_screen.dart';
import 'package:koora_kick/features/landing/presentation/screen/landing_screen.dart';
import 'package:koora_kick/features/onboarding/presentation/screens/all_set_screen.dart';
import 'package:koora_kick/features/onboarding/presentation/screens/interests_screen.dart';
import 'package:koora_kick/features/onboarding/presentation/screens/watch_preference_screen.dart';
import 'package:koora_kick/features/signup/create_account/presentation/screen/create_account_screen.dart';
import 'package:koora_kick/features/verification/otp/presentation/screen/verify_phone_screen.dart';
import 'package:koora_kick/common/repositories/token_repository.dart';
import 'package:koora_kick/common/storage/app_settings_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:koora_kick/common/services/user_session_service.dart';
import 'package:koora_kick/common/services/user_session_status.dart';
import 'package:koora_kick/features/splash/splash_screen.dart';

part 'koorakick_routes.g.dart';

part 'auth_routes.dart';

part 'dashboard_routes.dart';

part 'onboarding_routes.dart';

part 'channel_routes.dart';

enum RouteAccess { public, private }

abstract class AppRouteData extends GoRouteData {
  const AppRouteData();

  RouteAccess get access;

  String get location;
}

// --- ROOT ROUTE DEFINITION ---
@TypedShellRoute<AppShellRoute>(
  routes: [
    TypedGoRoute<LandingRoute>(
      path: '/',
      routes: [
        TypedGoRoute<LoginRoute>(path: 'login'),
        TypedGoRoute<VerifyRoute>(path: 'verify'),
        TypedGoRoute<SignupRoute>(path: 'signup'),
        TypedGoRoute<ForgotPasswordRoute>(path: 'forgot-password'),
        TypedGoRoute<ResetPasswordRoute>(path: 'reset-password'),
      ],
    ),
    TypedGoRoute<StatusRoute>(path: '/status'),
    TypedGoRoute<TalkerRoute>(path: '/talker'),
    TypedGoRoute<OnboardingInterestsRoute>(path: '/onboarding/interests'),
    TypedGoRoute<WatchPreferenceRoute>(path: '/onboarding/watch-preference'),
    TypedGoRoute<AllSetRoute>(path: '/onboarding/all-set'),
    TypedGoRoute<ChannelDetailRoute>(path: '/channels/:channelId'),
    TypedGoRoute<CreateThreadRoute>(path: '/channels/:channelId/create-thread'),
    TypedGoRoute<ThreadDetailRoute>(path: '/threads/:threadId'),
    TypedStatefulShellRoute<MainShellRouteData>(
      branches: [
        TypedStatefulShellBranch<DashboardBranchData>(
          routes: [TypedGoRoute<DashboardRoute>(path: '/home')],
        ),
        TypedStatefulShellBranch<ChannelsBranchData>(
          routes: [TypedGoRoute<ChannelsRoute>(path: '/channels')],
        ),
        TypedStatefulShellBranch<KooraMapBranchData>(
          routes: [TypedGoRoute<KooraMapRoute>(path: '/map')],
        ),
        TypedStatefulShellBranch<LiveBranchData>(
          routes: [TypedGoRoute<LiveRoute>(path: '/live')],
        ),
        TypedStatefulShellBranch<ProfileBranchData>(
          routes: [
            TypedGoRoute<ProfileRoute>(
              path: '/profile',
              routes: [
                TypedGoRoute<SettingsRoute>(path: 'settings'),
                TypedGoRoute<LanguageRoute>(path: 'language'),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
)
class AppShellRoute extends ShellRouteData {
  const AppShellRoute();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) => AppGuard(
        policies: const [],
        child: navigator,
      );
}

class LandingRoute extends AppRouteData {
  const LandingRoute();

  @override
  RouteAccess get access => RouteAccess.public;

  @override
  String get location => '/';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LandingScreen();
}


class StatusRoute extends AppRouteData {
  const StatusRoute(this.$extra);

  final StatusScreenViewHolder $extra;

  @override
  RouteAccess get access => RouteAccess.private;

  @override
  String get location => '/status';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      StatusScreen(viewModel: $extra);
}

class TalkerRoute extends AppRouteData {
  const TalkerRoute();

  @override
  RouteAccess get access => RouteAccess.private;

  @override
  String get location => '/talker';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      TalkerScreen(talker: AppLogger.instance.talker);
}

@TypedGoRoute<SplashRoute>(path: '/splash')
class SplashRoute extends AppRouteData {
  const SplashRoute();

  @override
  RouteAccess get access => RouteAccess.public;

  @override
  String get location => '/splash';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SplashScreen();
}

final rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter goRouter(Ref ref) => GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/',
  debugLogDiagnostics: true,
  refreshListenable: GoRouterRefreshNotifier(ref),
  routes: $appRoutes,
  redirect: (context, state) async {
    final location = state.matchedLocation;
    final userSession = ref.read(userSessionServiceProvider);
    final isSplashDelaying = ref.read(splashDelayProvider).isLoading;
    final isRestarting = ref.watch(appRestartNotifierProvider);

    final isLoading = userSession.isLoading;
    final sessionStatus = userSession.value;

    if (isRestarting) {
      return sessionStatus?.maybeWhen(
        authenticated: (_) => const DashboardRoute().location,
        orElse: () => const LandingRoute().location,
      );
    }

    if (isLoading || sessionStatus is InitialStatus || isSplashDelaying) {
      if (location != '/splash') return '/splash';
      return null;
    }

    final allRoutes = [
      const SplashRoute(),
      const LandingRoute(),
      const LoginRoute(),
      const SignupRoute(),
      const DashboardRoute(),
      const ChannelsRoute(),
      const KooraMapRoute(),
      const LiveRoute(),
      const ProfileRoute(),
      StatusRoute(StatusScreenViewHolder.fake()),
      const TalkerRoute(),
      const VerifyRoute(),
      const ForgotPasswordRoute(),
      const ResetPasswordRoute(),
      const OnboardingInterestsRoute(),
      const WatchPreferenceRoute(),
      const AllSetRoute(),
    ];

    final targetRoute = allRoutes.firstWhere(
      (r) => r.location == location || (location.startsWith(r.location) && r.location != '/'),
      orElse: () => const LandingRoute() as AppRouteData,
    );

    // ChannelDetail/CreateThread/ThreadDetail carry a dynamic id in their
    // path, so they can't be looked up in `allRoutes` above (which would
    // otherwise fall through to the public `/channels` tab's access via
    // prefix matching). Classify them explicitly instead.
    final isDynamicPrivateRoute = location.startsWith('/threads/') ||
        RegExp(r'^/channels/[^/]+').hasMatch(location);
    final effectiveAccess =
        isDynamicPrivateRoute ? RouteAccess.private : targetRoute.access;

    if (sessionStatus is UnauthenticatedStatus) {
      if (effectiveAccess == RouteAccess.private) {
        return const LandingRoute().location;
      }
      return null;
    }

    if (sessionStatus is AuthenticatedStatus) {
      return _getAuthenticatedRedirect(
        ref,
        location: location,
        targetRoute: targetRoute,
      );
    }
    return null;
  },
);

Future<String?> _getAuthenticatedRedirect(
  Ref ref, {
  required String location,
  required AppRouteData targetRoute,
}) async {
  final authRoutes = [
    const LandingRoute().location,
    const LoginRoute().location,
    const SignupRoute().location,
    const VerifyRoute().location,
    const ForgotPasswordRoute().location,
    const ResetPasswordRoute().location,
  ];

  // If user is authenticated and trying to access auth pages, redirect to
  // home — or into onboarding right after a fresh login/registration.
  if (authRoutes.contains(location)) {
    final pendingDeeplink = ref.read(deferredDeeplinkProvider);
    if (pendingDeeplink != null) {
      ref.read(deferredDeeplinkProvider.notifier).clear();
      return pendingDeeplink.location;
    }

    final isFirstTimeLogin =
        await ref.read(appSettingsStoreProvider).isFirstTimeLogin();
    if (isFirstTimeLogin) {
      return const OnboardingInterestsRoute().location;
    }
    return const DashboardRoute().location;
  }

  return null;
}

class GoRouterRefreshNotifier extends ChangeNotifier {
  GoRouterRefreshNotifier(this.ref) {
    ref.listen(userSessionServiceProvider, (previous, next) {
      notifyListeners();
    });
  }

  final Ref ref;
}

class MyNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {}

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {}
}
