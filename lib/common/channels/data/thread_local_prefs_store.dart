import 'package:koora_kick/common/storage/storage_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final threadLocalPrefsStoreProvider =
    Provider<ThreadLocalPrefsStore>(ThreadLocalPrefsStore.new);

/// Purely local (device-only) thread preferences that have no backend
/// endpoint yet: saved/bookmarked threads and muted threads.
class ThreadLocalPrefsStore {
  ThreadLocalPrefsStore(this._ref);

  final Ref _ref;

  late final _prefs = _ref.read(sharedPreferencesProvider);

  static const _savedKey = 'saved_thread_ids';
  static const _mutedKey = 'muted_thread_ids';

  bool isSaved(String threadId) => _prefs.getStringList(_savedKey)?.contains(threadId) ?? false;

  bool isMuted(String threadId) => _prefs.getStringList(_mutedKey)?.contains(threadId) ?? false;

  Future<void> setSaved(String threadId, bool saved) => _toggle(_savedKey, threadId, saved);

  Future<void> setMuted(String threadId, bool muted) => _toggle(_mutedKey, threadId, muted);

  Future<void> _toggle(String key, String threadId, bool value) async {
    final ids = {...?_prefs.getStringList(key)};
    value ? ids.add(threadId) : ids.remove(threadId);
    await _prefs.setStringList(key, ids.toList());
  }
}
