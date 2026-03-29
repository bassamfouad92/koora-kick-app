// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_dotted_line_style.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppDottedLineStyle {

 double get dotLength; double get dotGapLength; double get lineThickness; double get dotRadius; Color get dotColor;
/// Create a copy of AppDottedLineStyle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppDottedLineStyleCopyWith<AppDottedLineStyle> get copyWith => _$AppDottedLineStyleCopyWithImpl<AppDottedLineStyle>(this as AppDottedLineStyle, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppDottedLineStyle&&(identical(other.dotLength, dotLength) || other.dotLength == dotLength)&&(identical(other.dotGapLength, dotGapLength) || other.dotGapLength == dotGapLength)&&(identical(other.lineThickness, lineThickness) || other.lineThickness == lineThickness)&&(identical(other.dotRadius, dotRadius) || other.dotRadius == dotRadius)&&(identical(other.dotColor, dotColor) || other.dotColor == dotColor));
}


@override
int get hashCode => Object.hash(runtimeType,dotLength,dotGapLength,lineThickness,dotRadius,dotColor);

@override
String toString() {
  return 'AppDottedLineStyle(dotLength: $dotLength, dotGapLength: $dotGapLength, lineThickness: $lineThickness, dotRadius: $dotRadius, dotColor: $dotColor)';
}


}

/// @nodoc
abstract mixin class $AppDottedLineStyleCopyWith<$Res>  {
  factory $AppDottedLineStyleCopyWith(AppDottedLineStyle value, $Res Function(AppDottedLineStyle) _then) = _$AppDottedLineStyleCopyWithImpl;
@useResult
$Res call({
 double dotLength, double dotGapLength, double lineThickness, double dotRadius, Color dotColor
});




}
/// @nodoc
class _$AppDottedLineStyleCopyWithImpl<$Res>
    implements $AppDottedLineStyleCopyWith<$Res> {
  _$AppDottedLineStyleCopyWithImpl(this._self, this._then);

  final AppDottedLineStyle _self;
  final $Res Function(AppDottedLineStyle) _then;

/// Create a copy of AppDottedLineStyle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dotLength = null,Object? dotGapLength = null,Object? lineThickness = null,Object? dotRadius = null,Object? dotColor = null,}) {
  return _then(_self.copyWith(
dotLength: null == dotLength ? _self.dotLength : dotLength // ignore: cast_nullable_to_non_nullable
as double,dotGapLength: null == dotGapLength ? _self.dotGapLength : dotGapLength // ignore: cast_nullable_to_non_nullable
as double,lineThickness: null == lineThickness ? _self.lineThickness : lineThickness // ignore: cast_nullable_to_non_nullable
as double,dotRadius: null == dotRadius ? _self.dotRadius : dotRadius // ignore: cast_nullable_to_non_nullable
as double,dotColor: null == dotColor ? _self.dotColor : dotColor // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}

}


/// Adds pattern-matching-related methods to [AppDottedLineStyle].
extension AppDottedLineStylePatterns on AppDottedLineStyle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppDottedLineStyle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppDottedLineStyle() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppDottedLineStyle value)  $default,){
final _that = this;
switch (_that) {
case _AppDottedLineStyle():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppDottedLineStyle value)?  $default,){
final _that = this;
switch (_that) {
case _AppDottedLineStyle() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double dotLength,  double dotGapLength,  double lineThickness,  double dotRadius,  Color dotColor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppDottedLineStyle() when $default != null:
return $default(_that.dotLength,_that.dotGapLength,_that.lineThickness,_that.dotRadius,_that.dotColor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double dotLength,  double dotGapLength,  double lineThickness,  double dotRadius,  Color dotColor)  $default,) {final _that = this;
switch (_that) {
case _AppDottedLineStyle():
return $default(_that.dotLength,_that.dotGapLength,_that.lineThickness,_that.dotRadius,_that.dotColor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double dotLength,  double dotGapLength,  double lineThickness,  double dotRadius,  Color dotColor)?  $default,) {final _that = this;
switch (_that) {
case _AppDottedLineStyle() when $default != null:
return $default(_that.dotLength,_that.dotGapLength,_that.lineThickness,_that.dotRadius,_that.dotColor);case _:
  return null;

}
}

}

/// @nodoc


class _AppDottedLineStyle implements AppDottedLineStyle {
  const _AppDottedLineStyle({this.dotLength = 5.0, this.dotGapLength = 4.0, this.lineThickness = 1.0, this.dotRadius = 0.0, this.dotColor = AppColors.inputBorderDefault});
  

@override@JsonKey() final  double dotLength;
@override@JsonKey() final  double dotGapLength;
@override@JsonKey() final  double lineThickness;
@override@JsonKey() final  double dotRadius;
@override@JsonKey() final  Color dotColor;

/// Create a copy of AppDottedLineStyle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppDottedLineStyleCopyWith<_AppDottedLineStyle> get copyWith => __$AppDottedLineStyleCopyWithImpl<_AppDottedLineStyle>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppDottedLineStyle&&(identical(other.dotLength, dotLength) || other.dotLength == dotLength)&&(identical(other.dotGapLength, dotGapLength) || other.dotGapLength == dotGapLength)&&(identical(other.lineThickness, lineThickness) || other.lineThickness == lineThickness)&&(identical(other.dotRadius, dotRadius) || other.dotRadius == dotRadius)&&(identical(other.dotColor, dotColor) || other.dotColor == dotColor));
}


@override
int get hashCode => Object.hash(runtimeType,dotLength,dotGapLength,lineThickness,dotRadius,dotColor);

@override
String toString() {
  return 'AppDottedLineStyle(dotLength: $dotLength, dotGapLength: $dotGapLength, lineThickness: $lineThickness, dotRadius: $dotRadius, dotColor: $dotColor)';
}


}

/// @nodoc
abstract mixin class _$AppDottedLineStyleCopyWith<$Res> implements $AppDottedLineStyleCopyWith<$Res> {
  factory _$AppDottedLineStyleCopyWith(_AppDottedLineStyle value, $Res Function(_AppDottedLineStyle) _then) = __$AppDottedLineStyleCopyWithImpl;
@override @useResult
$Res call({
 double dotLength, double dotGapLength, double lineThickness, double dotRadius, Color dotColor
});




}
/// @nodoc
class __$AppDottedLineStyleCopyWithImpl<$Res>
    implements _$AppDottedLineStyleCopyWith<$Res> {
  __$AppDottedLineStyleCopyWithImpl(this._self, this._then);

  final _AppDottedLineStyle _self;
  final $Res Function(_AppDottedLineStyle) _then;

/// Create a copy of AppDottedLineStyle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dotLength = null,Object? dotGapLength = null,Object? lineThickness = null,Object? dotRadius = null,Object? dotColor = null,}) {
  return _then(_AppDottedLineStyle(
dotLength: null == dotLength ? _self.dotLength : dotLength // ignore: cast_nullable_to_non_nullable
as double,dotGapLength: null == dotGapLength ? _self.dotGapLength : dotGapLength // ignore: cast_nullable_to_non_nullable
as double,lineThickness: null == lineThickness ? _self.lineThickness : lineThickness // ignore: cast_nullable_to_non_nullable
as double,dotRadius: null == dotRadius ? _self.dotRadius : dotRadius // ignore: cast_nullable_to_non_nullable
as double,dotColor: null == dotColor ? _self.dotColor : dotColor // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}


}

// dart format on
