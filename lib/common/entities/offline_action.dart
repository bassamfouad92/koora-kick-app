class OfflineAction {
  final String id;
  final String actionType;
  final String payload; // JSON string
  final int timestampMs;

  const OfflineAction({
    required this.id,
    required this.actionType,
    required this.payload,
    required this.timestampMs,
  });
}
