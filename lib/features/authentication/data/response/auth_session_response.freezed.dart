// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_session_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthSessionResponse {

 User get user; String get token;
/// Create a copy of AuthSessionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthSessionResponseCopyWith<AuthSessionResponse> get copyWith => _$AuthSessionResponseCopyWithImpl<AuthSessionResponse>(this as AuthSessionResponse, _$identity);

  /// Serializes this AuthSessionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSessionResponse&&(identical(other.user, user) || other.user == user)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,token);

@override
String toString() {
  return 'AuthSessionResponse(user: $user, token: $token)';
}


}

/// @nodoc
abstract mixin class $AuthSessionResponseCopyWith<$Res>  {
  factory $AuthSessionResponseCopyWith(AuthSessionResponse value, $Res Function(AuthSessionResponse) _then) = _$AuthSessionResponseCopyWithImpl;
@useResult
$Res call({
 User user, String token
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$AuthSessionResponseCopyWithImpl<$Res>
    implements $AuthSessionResponseCopyWith<$Res> {
  _$AuthSessionResponseCopyWithImpl(this._self, this._then);

  final AuthSessionResponse _self;
  final $Res Function(AuthSessionResponse) _then;

/// Create a copy of AuthSessionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? token = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of AuthSessionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthSessionResponse].
extension AuthSessionResponsePatterns on AuthSessionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthSessionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthSessionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthSessionResponse value)  $default,){
final _that = this;
switch (_that) {
case _AuthSessionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthSessionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AuthSessionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( User user,  String token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthSessionResponse() when $default != null:
return $default(_that.user,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( User user,  String token)  $default,) {final _that = this;
switch (_that) {
case _AuthSessionResponse():
return $default(_that.user,_that.token);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( User user,  String token)?  $default,) {final _that = this;
switch (_that) {
case _AuthSessionResponse() when $default != null:
return $default(_that.user,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthSessionResponse implements AuthSessionResponse {
  const _AuthSessionResponse({required this.user, required this.token});
  factory _AuthSessionResponse.fromJson(Map<String, dynamic> json) => _$AuthSessionResponseFromJson(json);

@override final  User user;
@override final  String token;

/// Create a copy of AuthSessionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthSessionResponseCopyWith<_AuthSessionResponse> get copyWith => __$AuthSessionResponseCopyWithImpl<_AuthSessionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthSessionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthSessionResponse&&(identical(other.user, user) || other.user == user)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,token);

@override
String toString() {
  return 'AuthSessionResponse(user: $user, token: $token)';
}


}

/// @nodoc
abstract mixin class _$AuthSessionResponseCopyWith<$Res> implements $AuthSessionResponseCopyWith<$Res> {
  factory _$AuthSessionResponseCopyWith(_AuthSessionResponse value, $Res Function(_AuthSessionResponse) _then) = __$AuthSessionResponseCopyWithImpl;
@override @useResult
$Res call({
 User user, String token
});


@override $UserCopyWith<$Res> get user;

}
/// @nodoc
class __$AuthSessionResponseCopyWithImpl<$Res>
    implements _$AuthSessionResponseCopyWith<$Res> {
  __$AuthSessionResponseCopyWithImpl(this._self, this._then);

  final _AuthSessionResponse _self;
  final $Res Function(_AuthSessionResponse) _then;

/// Create a copy of AuthSessionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? token = null,}) {
  return _then(_AuthSessionResponse(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AuthSessionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
