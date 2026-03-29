import 'package:koora_kick/common/deeplink/deeplink_handler.dart';
import 'package:koora_kick/common/services/user_session_service.dart';
import 'package:koora_kick/common/services/user_session_status.dart';
import 'package:koora_kick/routes/koorakick_routes.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:app_links/app_links.dart';
import 'dart:async';

part 'deeplink_manager.g.dart';

@Riverpod(keepAlive: true)
class DeeplinkManager extends _$DeeplinkManager {
  late final AppLinks _appLinks;
  StreamSubscription<Uri>? _linkSubscription;

  final List<DeeplinkHandler> _handlers = [];

  @override
  void build() {
    _appLinks = AppLinks();
    _initDeepLinks();
    
    ref.onDispose(() {
      _linkSubscription?.cancel();
    });
  }

  Future<void> _initDeepLinks() async {
    // Check initial link if app was opened via one
    try {
      final initialUri = await _appLinks.getInitialLink();
      if (initialUri != null) {
        handleDeeplink(initialUri.toString(), DeeplinkSource.url);
      }
    } catch (e) {
      debugPrint('Error getting initial link: $e');
    }

    // Listen to incoming links
    _linkSubscription = _appLinks.uriLinkStream.listen((uri) {
      handleDeeplink(uri.toString(), DeeplinkSource.url);
    }, onError: (err) {
      debugPrint('Deeplink Stream Error: $err');
    });
  }

  void handleDeeplink(String url, DeeplinkSource source) {
    final uri = Uri.parse(url);

    for (final handler in _handlers) {
      final route = handler.handlePath(uri, source);
      if (route != null) {
        _navigate(route);
        break;
      }
    }
  }

  void _navigate(AppRouteData route) {
    final userSession = ref.read(userSessionServiceProvider);
    final isAuthenticated = userSession.value is AuthenticatedStatus;

    if (route.access == RouteAccess.private && !isAuthenticated) {
      ref.read(deferredDeeplinkProvider.notifier).set(route);
      ref.read(goRouterProvider).go(const LandingRoute().location);
      return;
    }
    ref.read(goRouterProvider).push(route.location);
  }
}

@Riverpod(keepAlive: true)
class DeferredDeeplink extends _$DeferredDeeplink {
  @override
  AppRouteData? build() => null;

  void set(AppRouteData route) => state = route;

  void clear() => state = null;

  void trigger() {
    if (state != null) {
      final route = state!;
      state = null;
      ref.read(goRouterProvider).push(route.location);
    }
  }
}
