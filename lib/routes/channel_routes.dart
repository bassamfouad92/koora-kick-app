part of 'koorakick_routes.dart';

class ChannelDetailRoute extends AppRouteData {
  const ChannelDetailRoute({required this.channelId});

  final String channelId;

  @override
  RouteAccess get access => RouteAccess.private;

  @override
  String get location => '/channels/$channelId';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ChannelDetailScreen(channelId: channelId);
}

class CreateThreadRoute extends AppRouteData {
  const CreateThreadRoute({required this.channelId});

  final String channelId;

  @override
  RouteAccess get access => RouteAccess.private;

  @override
  String get location => '/channels/$channelId/create-thread';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      CreateThreadScreen(channelId: channelId);
}

class ThreadDetailRoute extends AppRouteData {
  const ThreadDetailRoute({required this.threadId});

  final String threadId;

  @override
  RouteAccess get access => RouteAccess.private;

  @override
  String get location => '/threads/$threadId';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ThreadDetailScreen(threadId: threadId);
}
