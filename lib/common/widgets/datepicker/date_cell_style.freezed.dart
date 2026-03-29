// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui/date_cell_style.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DateCellStyle {
  Color get bgColor;
  Color get numberColor;
  Border? get border;
  IndicatorWidget get indicator;

  /// Create a copy of DateCellStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DateCellStyleCopyWith<DateCellStyle> get copyWith =>
      _$DateCellStyleCopyWithImpl<DateCellStyle>(
          this as DateCellStyle, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DateCellStyle &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.numberColor, numberColor) ||
                other.numberColor == numberColor) &&
            (identical(other.border, border) || other.border == border) &&
            (identical(other.indicator, indicator) ||
                other.indicator == indicator));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bgColor, numberColor, border, indicator);

  @override
  String toString() {
    return 'DateCellStyle(bgColor: $bgColor, numberColor: $numberColor, border: $border, indicator: $indicator)';
  }
}

/// @nodoc
abstract mixin class $DateCellStyleCopyWith<$Res> {
  factory $DateCellStyleCopyWith(
          DateCellStyle value, $Res Function(DateCellStyle) _then) =
      _$DateCellStyleCopyWithImpl;
  @useResult
  $Res call(
      {Color bgColor,
      Color numberColor,
      Border? border,
      IndicatorWidget indicator});
}

/// @nodoc
class _$DateCellStyleCopyWithImpl<$Res>
    implements $DateCellStyleCopyWith<$Res> {
  _$DateCellStyleCopyWithImpl(this._self, this._then);

  final DateCellStyle _self;
  final $Res Function(DateCellStyle) _then;

  /// Create a copy of DateCellStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bgColor = null,
    Object? numberColor = null,
    Object? border = freezed,
    Object? indicator = null,
  }) {
    return _then(_self.copyWith(
      bgColor: null == bgColor
          ? _self.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as Color,
      numberColor: null == numberColor
          ? _self.numberColor
          : numberColor // ignore: cast_nullable_to_non_nullable
              as Color,
      border: freezed == border
          ? _self.border
          : border // ignore: cast_nullable_to_non_nullable
              as Border?,
      indicator: null == indicator
          ? _self.indicator
          : indicator // ignore: cast_nullable_to_non_nullable
              as IndicatorWidget,
    ));
  }
}

/// Adds pattern-matching-related methods to [DateCellStyle].
extension DateCellStylePatterns on DateCellStyle {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DateCellStyle value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DateCellStyle() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DateCellStyle value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DateCellStyle():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DateCellStyle value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DateCellStyle() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Color bgColor, Color numberColor, Border? border,
            IndicatorWidget indicator)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DateCellStyle() when $default != null:
        return $default(
            _that.bgColor, _that.numberColor, _that.border, _that.indicator);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Color bgColor, Color numberColor, Border? border,
            IndicatorWidget indicator)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DateCellStyle():
        return $default(
            _that.bgColor, _that.numberColor, _that.border, _that.indicator);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Color bgColor, Color numberColor, Border? border,
            IndicatorWidget indicator)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DateCellStyle() when $default != null:
        return $default(
            _that.bgColor, _that.numberColor, _that.border, _that.indicator);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DateCellStyle implements DateCellStyle {
  const _DateCellStyle(
      {required this.bgColor,
      required this.numberColor,
      this.border,
      required this.indicator});

  @override
  final Color bgColor;
  @override
  final Color numberColor;
  @override
  final Border? border;
  @override
  final IndicatorWidget indicator;

  /// Create a copy of DateCellStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DateCellStyleCopyWith<_DateCellStyle> get copyWith =>
      __$DateCellStyleCopyWithImpl<_DateCellStyle>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DateCellStyle &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.numberColor, numberColor) ||
                other.numberColor == numberColor) &&
            (identical(other.border, border) || other.border == border) &&
            (identical(other.indicator, indicator) ||
                other.indicator == indicator));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bgColor, numberColor, border, indicator);

  @override
  String toString() {
    return 'DateCellStyle(bgColor: $bgColor, numberColor: $numberColor, border: $border, indicator: $indicator)';
  }
}

/// @nodoc
abstract mixin class _$DateCellStyleCopyWith<$Res>
    implements $DateCellStyleCopyWith<$Res> {
  factory _$DateCellStyleCopyWith(
          _DateCellStyle value, $Res Function(_DateCellStyle) _then) =
      __$DateCellStyleCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Color bgColor,
      Color numberColor,
      Border? border,
      IndicatorWidget indicator});
}

/// @nodoc
class __$DateCellStyleCopyWithImpl<$Res>
    implements _$DateCellStyleCopyWith<$Res> {
  __$DateCellStyleCopyWithImpl(this._self, this._then);

  final _DateCellStyle _self;
  final $Res Function(_DateCellStyle) _then;

  /// Create a copy of DateCellStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bgColor = null,
    Object? numberColor = null,
    Object? border = freezed,
    Object? indicator = null,
  }) {
    return _then(_DateCellStyle(
      bgColor: null == bgColor
          ? _self.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as Color,
      numberColor: null == numberColor
          ? _self.numberColor
          : numberColor // ignore: cast_nullable_to_non_nullable
              as Color,
      border: freezed == border
          ? _self.border
          : border // ignore: cast_nullable_to_non_nullable
              as Border?,
      indicator: null == indicator
          ? _self.indicator
          : indicator // ignore: cast_nullable_to_non_nullable
              as IndicatorWidget,
    ));
  }
}

// dart format on
