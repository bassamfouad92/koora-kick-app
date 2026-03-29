// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FirebaseState {

 String? get fcmToken; bool get isInitialized; AppPermissionStatus get permissionStatus; String? get errorMessage; bool get isLoading;
/// Create a copy of FirebaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FirebaseStateCopyWith<FirebaseState> get copyWith => _$FirebaseStateCopyWithImpl<FirebaseState>(this as FirebaseState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FirebaseState&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&(identical(other.isInitialized, isInitialized) || other.isInitialized == isInitialized)&&(identical(other.permissionStatus, permissionStatus) || other.permissionStatus == permissionStatus)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,fcmToken,isInitialized,permissionStatus,errorMessage,isLoading);

@override
String toString() {
  return 'FirebaseState(fcmToken: $fcmToken, isInitialized: $isInitialized, permissionStatus: $permissionStatus, errorMessage: $errorMessage, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $FirebaseStateCopyWith<$Res>  {
  factory $FirebaseStateCopyWith(FirebaseState value, $Res Function(FirebaseState) _then) = _$FirebaseStateCopyWithImpl;
@useResult
$Res call({
 String? fcmToken, bool isInitialized, AppPermissionStatus permissionStatus, String? errorMessage, bool isLoading
});




}
/// @nodoc
class _$FirebaseStateCopyWithImpl<$Res>
    implements $FirebaseStateCopyWith<$Res> {
  _$FirebaseStateCopyWithImpl(this._self, this._then);

  final FirebaseState _self;
  final $Res Function(FirebaseState) _then;

/// Create a copy of FirebaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fcmToken = freezed,Object? isInitialized = null,Object? permissionStatus = null,Object? errorMessage = freezed,Object? isLoading = null,}) {
  return _then(_self.copyWith(
fcmToken: freezed == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String?,isInitialized: null == isInitialized ? _self.isInitialized : isInitialized // ignore: cast_nullable_to_non_nullable
as bool,permissionStatus: null == permissionStatus ? _self.permissionStatus : permissionStatus // ignore: cast_nullable_to_non_nullable
as AppPermissionStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FirebaseState].
extension FirebaseStatePatterns on FirebaseState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FirebaseState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FirebaseState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FirebaseState value)  $default,){
final _that = this;
switch (_that) {
case _FirebaseState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FirebaseState value)?  $default,){
final _that = this;
switch (_that) {
case _FirebaseState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? fcmToken,  bool isInitialized,  AppPermissionStatus permissionStatus,  String? errorMessage,  bool isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FirebaseState() when $default != null:
return $default(_that.fcmToken,_that.isInitialized,_that.permissionStatus,_that.errorMessage,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? fcmToken,  bool isInitialized,  AppPermissionStatus permissionStatus,  String? errorMessage,  bool isLoading)  $default,) {final _that = this;
switch (_that) {
case _FirebaseState():
return $default(_that.fcmToken,_that.isInitialized,_that.permissionStatus,_that.errorMessage,_that.isLoading);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? fcmToken,  bool isInitialized,  AppPermissionStatus permissionStatus,  String? errorMessage,  bool isLoading)?  $default,) {final _that = this;
switch (_that) {
case _FirebaseState() when $default != null:
return $default(_that.fcmToken,_that.isInitialized,_that.permissionStatus,_that.errorMessage,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class _FirebaseState implements FirebaseState {
  const _FirebaseState({this.fcmToken, this.isInitialized = false, this.permissionStatus = AppPermissionStatus.loading, this.errorMessage, this.isLoading = false});
  

@override final  String? fcmToken;
@override@JsonKey() final  bool isInitialized;
@override@JsonKey() final  AppPermissionStatus permissionStatus;
@override final  String? errorMessage;
@override@JsonKey() final  bool isLoading;

/// Create a copy of FirebaseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FirebaseStateCopyWith<_FirebaseState> get copyWith => __$FirebaseStateCopyWithImpl<_FirebaseState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FirebaseState&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&(identical(other.isInitialized, isInitialized) || other.isInitialized == isInitialized)&&(identical(other.permissionStatus, permissionStatus) || other.permissionStatus == permissionStatus)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,fcmToken,isInitialized,permissionStatus,errorMessage,isLoading);

@override
String toString() {
  return 'FirebaseState(fcmToken: $fcmToken, isInitialized: $isInitialized, permissionStatus: $permissionStatus, errorMessage: $errorMessage, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$FirebaseStateCopyWith<$Res> implements $FirebaseStateCopyWith<$Res> {
  factory _$FirebaseStateCopyWith(_FirebaseState value, $Res Function(_FirebaseState) _then) = __$FirebaseStateCopyWithImpl;
@override @useResult
$Res call({
 String? fcmToken, bool isInitialized, AppPermissionStatus permissionStatus, String? errorMessage, bool isLoading
});




}
/// @nodoc
class __$FirebaseStateCopyWithImpl<$Res>
    implements _$FirebaseStateCopyWith<$Res> {
  __$FirebaseStateCopyWithImpl(this._self, this._then);

  final _FirebaseState _self;
  final $Res Function(_FirebaseState) _then;

/// Create a copy of FirebaseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fcmToken = freezed,Object? isInitialized = null,Object? permissionStatus = null,Object? errorMessage = freezed,Object? isLoading = null,}) {
  return _then(_FirebaseState(
fcmToken: freezed == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String?,isInitialized: null == isInitialized ? _self.isInitialized : isInitialized // ignore: cast_nullable_to_non_nullable
as bool,permissionStatus: null == permissionStatus ? _self.permissionStatus : permissionStatus // ignore: cast_nullable_to_non_nullable
as AppPermissionStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
