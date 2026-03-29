abstract interface class CacheStore<T> {
  Future<void> save(T item);
  Future<T?> fetch();
  Future<void> remove();
}