extension UriDeeplinkX on Uri {
  /// Safely gets a path segment at a specific index.
  String? getPathSegment(int index) {
    if (pathSegments.length > index) {
      return pathSegments[index];
    }
    return null;
  }

  /// Gets a query parameter by key, with optional fallback check for 'id'.
  String? getParam(String key) {
    return queryParameters[key];
  }

  /// Checks if the first path segment matches the given path.
  bool matchesPath(String path) {
    return pathSegments.isNotEmpty && pathSegments[0] == path;
  }
}
