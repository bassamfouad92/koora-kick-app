// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_background_property.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppBackgroundProperty {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppBackgroundProperty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppBackgroundProperty()';
}


}

/// @nodoc
class $AppBackgroundPropertyCopyWith<$Res>  {
$AppBackgroundPropertyCopyWith(AppBackgroundProperty _, $Res Function(AppBackgroundProperty) __);
}


/// Adds pattern-matching-related methods to [AppBackgroundProperty].
extension AppBackgroundPropertyPatterns on AppBackgroundProperty {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Solid value)?  solid,TResult Function( _Gradient value)?  gradient,TResult Function( _AppImage value)?  appImage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Solid() when solid != null:
return solid(_that);case _Gradient() when gradient != null:
return gradient(_that);case _AppImage() when appImage != null:
return appImage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Solid value)  solid,required TResult Function( _Gradient value)  gradient,required TResult Function( _AppImage value)  appImage,}){
final _that = this;
switch (_that) {
case _Solid():
return solid(_that);case _Gradient():
return gradient(_that);case _AppImage():
return appImage(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Solid value)?  solid,TResult? Function( _Gradient value)?  gradient,TResult? Function( _AppImage value)?  appImage,}){
final _that = this;
switch (_that) {
case _Solid() when solid != null:
return solid(_that);case _Gradient() when gradient != null:
return gradient(_that);case _AppImage() when appImage != null:
return appImage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Color color)?  solid,TResult Function( Gradient gradient)?  gradient,TResult Function( AppImage image)?  appImage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Solid() when solid != null:
return solid(_that.color);case _Gradient() when gradient != null:
return gradient(_that.gradient);case _AppImage() when appImage != null:
return appImage(_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Color color)  solid,required TResult Function( Gradient gradient)  gradient,required TResult Function( AppImage image)  appImage,}) {final _that = this;
switch (_that) {
case _Solid():
return solid(_that.color);case _Gradient():
return gradient(_that.gradient);case _AppImage():
return appImage(_that.image);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Color color)?  solid,TResult? Function( Gradient gradient)?  gradient,TResult? Function( AppImage image)?  appImage,}) {final _that = this;
switch (_that) {
case _Solid() when solid != null:
return solid(_that.color);case _Gradient() when gradient != null:
return gradient(_that.gradient);case _AppImage() when appImage != null:
return appImage(_that.image);case _:
  return null;

}
}

}

/// @nodoc


class _Solid implements AppBackgroundProperty {
  const _Solid(this.color);
  

 final  Color color;

/// Create a copy of AppBackgroundProperty
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SolidCopyWith<_Solid> get copyWith => __$SolidCopyWithImpl<_Solid>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Solid&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,color);

@override
String toString() {
  return 'AppBackgroundProperty.solid(color: $color)';
}


}

/// @nodoc
abstract mixin class _$SolidCopyWith<$Res> implements $AppBackgroundPropertyCopyWith<$Res> {
  factory _$SolidCopyWith(_Solid value, $Res Function(_Solid) _then) = __$SolidCopyWithImpl;
@useResult
$Res call({
 Color color
});




}
/// @nodoc
class __$SolidCopyWithImpl<$Res>
    implements _$SolidCopyWith<$Res> {
  __$SolidCopyWithImpl(this._self, this._then);

  final _Solid _self;
  final $Res Function(_Solid) _then;

/// Create a copy of AppBackgroundProperty
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? color = null,}) {
  return _then(_Solid(
null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}


}

/// @nodoc


class _Gradient implements AppBackgroundProperty {
  const _Gradient(this.gradient);
  

 final  Gradient gradient;

/// Create a copy of AppBackgroundProperty
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GradientCopyWith<_Gradient> get copyWith => __$GradientCopyWithImpl<_Gradient>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Gradient&&(identical(other.gradient, gradient) || other.gradient == gradient));
}


@override
int get hashCode => Object.hash(runtimeType,gradient);

@override
String toString() {
  return 'AppBackgroundProperty.gradient(gradient: $gradient)';
}


}

/// @nodoc
abstract mixin class _$GradientCopyWith<$Res> implements $AppBackgroundPropertyCopyWith<$Res> {
  factory _$GradientCopyWith(_Gradient value, $Res Function(_Gradient) _then) = __$GradientCopyWithImpl;
@useResult
$Res call({
 Gradient gradient
});




}
/// @nodoc
class __$GradientCopyWithImpl<$Res>
    implements _$GradientCopyWith<$Res> {
  __$GradientCopyWithImpl(this._self, this._then);

  final _Gradient _self;
  final $Res Function(_Gradient) _then;

/// Create a copy of AppBackgroundProperty
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? gradient = null,}) {
  return _then(_Gradient(
null == gradient ? _self.gradient : gradient // ignore: cast_nullable_to_non_nullable
as Gradient,
  ));
}


}

/// @nodoc


class _AppImage implements AppBackgroundProperty {
  const _AppImage(this.image);
  

 final  AppImage image;

/// Create a copy of AppBackgroundProperty
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppImageCopyWith<_AppImage> get copyWith => __$AppImageCopyWithImpl<_AppImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppImage&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'AppBackgroundProperty.appImage(image: $image)';
}


}

/// @nodoc
abstract mixin class _$AppImageCopyWith<$Res> implements $AppBackgroundPropertyCopyWith<$Res> {
  factory _$AppImageCopyWith(_AppImage value, $Res Function(_AppImage) _then) = __$AppImageCopyWithImpl;
@useResult
$Res call({
 AppImage image
});




}
/// @nodoc
class __$AppImageCopyWithImpl<$Res>
    implements _$AppImageCopyWith<$Res> {
  __$AppImageCopyWithImpl(this._self, this._then);

  final _AppImage _self;
  final $Res Function(_AppImage) _then;

/// Create a copy of AppBackgroundProperty
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = null,}) {
  return _then(_AppImage(
null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as AppImage,
  ));
}


}

// dart format on
