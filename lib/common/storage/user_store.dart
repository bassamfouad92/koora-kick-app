import 'dart:convert';
import 'package:koora_kick/common/storage/cache_store.dart';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final userStoreProvider = Provider((ref) => UserStore());

class UserStore implements CacheStore<User> {
  static const _key = 'cached_user_data';
  final _storage = const FlutterSecureStorage();
  @override
  Future<void> save(User item) async {
    await _storage.write(key: _key, value: jsonEncode(item.toJson()));
  }

  @override
  Future<User?> fetch() async {
    final data = await _storage.read(key: _key);
    if (data == null) {
      return null;
    }
    return User.fromJson(jsonDecode(data));
  }

  @override
  Future<void> remove() async {
    await _storage.delete(key: _key);
  }
}
