import 'package:koora_kick/common/services/notification_service.dart';
import 'package:koora_kick/common/storage/storage_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final channelTopicSubscriptionStoreProvider =
    Provider<ChannelTopicSubscriptionStore>(ChannelTopicSubscriptionStore.new);

/// Tracks (locally) which channels the device is subscribed to for FCM push
/// notifications, and mirrors that into `channel_<channelId>` topic
/// subscriptions. Purely client-side — the backend has no notification
/// preference endpoint for this yet.
class ChannelTopicSubscriptionStore {
  ChannelTopicSubscriptionStore(this._ref);

  final Ref _ref;

  late final _prefs = _ref.read(sharedPreferencesProvider);
  late final _notificationService = _ref.read(notificationServiceProvider);

  String _topicFor(String channelId) => 'channel_$channelId';
  String _prefKeyFor(String channelId) => 'channel_notif_${channelId}_subscribed';

  bool isSubscribed(String channelId) =>
      _prefs.getBool(_prefKeyFor(channelId)) ?? true;

  Future<void> setSubscribed(String channelId, bool subscribed) async {
    final topic = _topicFor(channelId);
    if (subscribed) {
      await _notificationService.subscribeToTopic(topic);
    } else {
      await _notificationService.unsubscribeFromTopic(topic);
    }
    await _prefs.setBool(_prefKeyFor(channelId), subscribed);
  }
}
