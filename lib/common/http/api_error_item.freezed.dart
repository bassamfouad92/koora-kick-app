// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$APIErrorItem {

 String get message; String? get key; String? get value; String? get schema;
/// Create a copy of APIErrorItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$APIErrorItemCopyWith<APIErrorItem> get copyWith => _$APIErrorItemCopyWithImpl<APIErrorItem>(this as APIErrorItem, _$identity);

  /// Serializes this APIErrorItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is APIErrorItem&&(identical(other.message, message) || other.message == message)&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value)&&(identical(other.schema, schema) || other.schema == schema));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,key,value,schema);

@override
String toString() {
  return 'APIErrorItem(message: $message, key: $key, value: $value, schema: $schema)';
}


}

/// @nodoc
abstract mixin class $APIErrorItemCopyWith<$Res>  {
  factory $APIErrorItemCopyWith(APIErrorItem value, $Res Function(APIErrorItem) _then) = _$APIErrorItemCopyWithImpl;
@useResult
$Res call({
 String message, String? key, String? value, String? schema
});




}
/// @nodoc
class _$APIErrorItemCopyWithImpl<$Res>
    implements $APIErrorItemCopyWith<$Res> {
  _$APIErrorItemCopyWithImpl(this._self, this._then);

  final APIErrorItem _self;
  final $Res Function(APIErrorItem) _then;

/// Create a copy of APIErrorItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? key = freezed,Object? value = freezed,Object? schema = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [APIErrorItem].
extension APIErrorItemPatterns on APIErrorItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _APIErrorItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _APIErrorItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _APIErrorItem value)  $default,){
final _that = this;
switch (_that) {
case _APIErrorItem():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _APIErrorItem value)?  $default,){
final _that = this;
switch (_that) {
case _APIErrorItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  String? key,  String? value,  String? schema)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _APIErrorItem() when $default != null:
return $default(_that.message,_that.key,_that.value,_that.schema);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  String? key,  String? value,  String? schema)  $default,) {final _that = this;
switch (_that) {
case _APIErrorItem():
return $default(_that.message,_that.key,_that.value,_that.schema);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  String? key,  String? value,  String? schema)?  $default,) {final _that = this;
switch (_that) {
case _APIErrorItem() when $default != null:
return $default(_that.message,_that.key,_that.value,_that.schema);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _APIErrorItem implements APIErrorItem {
  const _APIErrorItem({required this.message, this.key, this.value, this.schema});
  factory _APIErrorItem.fromJson(Map<String, dynamic> json) => _$APIErrorItemFromJson(json);

@override final  String message;
@override final  String? key;
@override final  String? value;
@override final  String? schema;

/// Create a copy of APIErrorItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$APIErrorItemCopyWith<_APIErrorItem> get copyWith => __$APIErrorItemCopyWithImpl<_APIErrorItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$APIErrorItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _APIErrorItem&&(identical(other.message, message) || other.message == message)&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value)&&(identical(other.schema, schema) || other.schema == schema));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,key,value,schema);

@override
String toString() {
  return 'APIErrorItem(message: $message, key: $key, value: $value, schema: $schema)';
}


}

/// @nodoc
abstract mixin class _$APIErrorItemCopyWith<$Res> implements $APIErrorItemCopyWith<$Res> {
  factory _$APIErrorItemCopyWith(_APIErrorItem value, $Res Function(_APIErrorItem) _then) = __$APIErrorItemCopyWithImpl;
@override @useResult
$Res call({
 String message, String? key, String? value, String? schema
});




}
/// @nodoc
class __$APIErrorItemCopyWithImpl<$Res>
    implements _$APIErrorItemCopyWith<$Res> {
  __$APIErrorItemCopyWithImpl(this._self, this._then);

  final _APIErrorItem _self;
  final $Res Function(_APIErrorItem) _then;

/// Create a copy of APIErrorItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? key = freezed,Object? value = freezed,Object? schema = freezed,}) {
  return _then(_APIErrorItem(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
