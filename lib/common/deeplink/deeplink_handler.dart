import 'package:koora_kick/routes/koorakick_routes.dart';

enum DeeplinkSource { url, notification }

abstract class DeeplinkHandler {
  /// Convert incoming path + queryParams into a GoRouteData instance
  AppRouteData? handlePath(Uri uri, DeeplinkSource source);
}
