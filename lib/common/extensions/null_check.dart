extension NullCheck on Object? {
  bool get isPresent => this != null;
  bool get isNotPresent => this == null;
}

extension LetOrNull<T> on T {
  R? letOrNull<R>(R Function(T it) block) => this != null ? block(this!) : null;
}

extension Let<T> on T? {
  R let<R>(
      R Function(T it) block, {
        required R Function() orElse,
      }) {
    final self = this;
    return self != null ? block(self) : orElse();
  }
}

extension BoolExtension on bool {
  T? trueOrNull<T>(T value) => this ? value : null;
}