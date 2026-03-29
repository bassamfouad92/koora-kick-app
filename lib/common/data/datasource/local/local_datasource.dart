abstract class LocalDataSource<T> {
  /// Save a list of items to local storage
  Future<void> saveAll(List<T> items);

  /// Get all items from local storage, optionally filtered by an id
  Future<List<T>> getAll({String? filterId});

  /// Get a single item by id
  Future<T?> get(String id);

  /// Update a single item
  Future<void> update(String id, T item);

  /// Clear expired items based on implementation logic
  Future<void> clearExpired();

  /// Clear all data
  Future<void> clearAll();
}
