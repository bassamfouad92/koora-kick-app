// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_session_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserSessionStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSessionStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserSessionStatus()';
}


}

/// @nodoc
class $UserSessionStatusCopyWith<$Res>  {
$UserSessionStatusCopyWith(UserSessionStatus _, $Res Function(UserSessionStatus) __);
}


/// Adds pattern-matching-related methods to [UserSessionStatus].
extension UserSessionStatusPatterns on UserSessionStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitialStatus value)?  initial,TResult Function( UnauthenticatedStatus value)?  unauthenticated,TResult Function( AuthenticatedStatus value)?  authenticated,TResult Function( UnverifiedStatus value)?  unverified,TResult Function( ResettingPasscodeStatus value)?  resettingPasscode,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitialStatus() when initial != null:
return initial(_that);case UnauthenticatedStatus() when unauthenticated != null:
return unauthenticated(_that);case AuthenticatedStatus() when authenticated != null:
return authenticated(_that);case UnverifiedStatus() when unverified != null:
return unverified(_that);case ResettingPasscodeStatus() when resettingPasscode != null:
return resettingPasscode(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitialStatus value)  initial,required TResult Function( UnauthenticatedStatus value)  unauthenticated,required TResult Function( AuthenticatedStatus value)  authenticated,required TResult Function( UnverifiedStatus value)  unverified,required TResult Function( ResettingPasscodeStatus value)  resettingPasscode,}){
final _that = this;
switch (_that) {
case InitialStatus():
return initial(_that);case UnauthenticatedStatus():
return unauthenticated(_that);case AuthenticatedStatus():
return authenticated(_that);case UnverifiedStatus():
return unverified(_that);case ResettingPasscodeStatus():
return resettingPasscode(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitialStatus value)?  initial,TResult? Function( UnauthenticatedStatus value)?  unauthenticated,TResult? Function( AuthenticatedStatus value)?  authenticated,TResult? Function( UnverifiedStatus value)?  unverified,TResult? Function( ResettingPasscodeStatus value)?  resettingPasscode,}){
final _that = this;
switch (_that) {
case InitialStatus() when initial != null:
return initial(_that);case UnauthenticatedStatus() when unauthenticated != null:
return unauthenticated(_that);case AuthenticatedStatus() when authenticated != null:
return authenticated(_that);case UnverifiedStatus() when unverified != null:
return unverified(_that);case ResettingPasscodeStatus() when resettingPasscode != null:
return resettingPasscode(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  unauthenticated,TResult Function( User user)?  authenticated,TResult Function( User user,  Token token)?  unverified,TResult Function( String phone,  Token token)?  resettingPasscode,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialStatus() when initial != null:
return initial();case UnauthenticatedStatus() when unauthenticated != null:
return unauthenticated();case AuthenticatedStatus() when authenticated != null:
return authenticated(_that.user);case UnverifiedStatus() when unverified != null:
return unverified(_that.user,_that.token);case ResettingPasscodeStatus() when resettingPasscode != null:
return resettingPasscode(_that.phone,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  unauthenticated,required TResult Function( User user)  authenticated,required TResult Function( User user,  Token token)  unverified,required TResult Function( String phone,  Token token)  resettingPasscode,}) {final _that = this;
switch (_that) {
case InitialStatus():
return initial();case UnauthenticatedStatus():
return unauthenticated();case AuthenticatedStatus():
return authenticated(_that.user);case UnverifiedStatus():
return unverified(_that.user,_that.token);case ResettingPasscodeStatus():
return resettingPasscode(_that.phone,_that.token);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  unauthenticated,TResult? Function( User user)?  authenticated,TResult? Function( User user,  Token token)?  unverified,TResult? Function( String phone,  Token token)?  resettingPasscode,}) {final _that = this;
switch (_that) {
case InitialStatus() when initial != null:
return initial();case UnauthenticatedStatus() when unauthenticated != null:
return unauthenticated();case AuthenticatedStatus() when authenticated != null:
return authenticated(_that.user);case UnverifiedStatus() when unverified != null:
return unverified(_that.user,_that.token);case ResettingPasscodeStatus() when resettingPasscode != null:
return resettingPasscode(_that.phone,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class InitialStatus implements UserSessionStatus {
  const InitialStatus();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserSessionStatus.initial()';
}


}




/// @nodoc


class UnauthenticatedStatus implements UserSessionStatus {
  const UnauthenticatedStatus();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnauthenticatedStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserSessionStatus.unauthenticated()';
}


}




/// @nodoc


class AuthenticatedStatus implements UserSessionStatus {
  const AuthenticatedStatus({required this.user});
  

 final  User user;

/// Create a copy of UserSessionStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthenticatedStatusCopyWith<AuthenticatedStatus> get copyWith => _$AuthenticatedStatusCopyWithImpl<AuthenticatedStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenticatedStatus&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'UserSessionStatus.authenticated(user: $user)';
}


}

/// @nodoc
abstract mixin class $AuthenticatedStatusCopyWith<$Res> implements $UserSessionStatusCopyWith<$Res> {
  factory $AuthenticatedStatusCopyWith(AuthenticatedStatus value, $Res Function(AuthenticatedStatus) _then) = _$AuthenticatedStatusCopyWithImpl;
@useResult
$Res call({
 User user
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$AuthenticatedStatusCopyWithImpl<$Res>
    implements $AuthenticatedStatusCopyWith<$Res> {
  _$AuthenticatedStatusCopyWithImpl(this._self, this._then);

  final AuthenticatedStatus _self;
  final $Res Function(AuthenticatedStatus) _then;

/// Create a copy of UserSessionStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(AuthenticatedStatus(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of UserSessionStatus
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class UnverifiedStatus implements UserSessionStatus {
  const UnverifiedStatus({required this.user, required this.token});
  

 final  User user;
 final  Token token;

/// Create a copy of UserSessionStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnverifiedStatusCopyWith<UnverifiedStatus> get copyWith => _$UnverifiedStatusCopyWithImpl<UnverifiedStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnverifiedStatus&&(identical(other.user, user) || other.user == user)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,user,token);

@override
String toString() {
  return 'UserSessionStatus.unverified(user: $user, token: $token)';
}


}

/// @nodoc
abstract mixin class $UnverifiedStatusCopyWith<$Res> implements $UserSessionStatusCopyWith<$Res> {
  factory $UnverifiedStatusCopyWith(UnverifiedStatus value, $Res Function(UnverifiedStatus) _then) = _$UnverifiedStatusCopyWithImpl;
@useResult
$Res call({
 User user, Token token
});


$UserCopyWith<$Res> get user;$TokenCopyWith<$Res> get token;

}
/// @nodoc
class _$UnverifiedStatusCopyWithImpl<$Res>
    implements $UnverifiedStatusCopyWith<$Res> {
  _$UnverifiedStatusCopyWithImpl(this._self, this._then);

  final UnverifiedStatus _self;
  final $Res Function(UnverifiedStatus) _then;

/// Create a copy of UserSessionStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,Object? token = null,}) {
  return _then(UnverifiedStatus(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as Token,
  ));
}

/// Create a copy of UserSessionStatus
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of UserSessionStatus
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokenCopyWith<$Res> get token {
  
  return $TokenCopyWith<$Res>(_self.token, (value) {
    return _then(_self.copyWith(token: value));
  });
}
}

/// @nodoc


class ResettingPasscodeStatus implements UserSessionStatus {
  const ResettingPasscodeStatus({required this.phone, required this.token});
  

 final  String phone;
 final  Token token;

/// Create a copy of UserSessionStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResettingPasscodeStatusCopyWith<ResettingPasscodeStatus> get copyWith => _$ResettingPasscodeStatusCopyWithImpl<ResettingPasscodeStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResettingPasscodeStatus&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,phone,token);

@override
String toString() {
  return 'UserSessionStatus.resettingPasscode(phone: $phone, token: $token)';
}


}

/// @nodoc
abstract mixin class $ResettingPasscodeStatusCopyWith<$Res> implements $UserSessionStatusCopyWith<$Res> {
  factory $ResettingPasscodeStatusCopyWith(ResettingPasscodeStatus value, $Res Function(ResettingPasscodeStatus) _then) = _$ResettingPasscodeStatusCopyWithImpl;
@useResult
$Res call({
 String phone, Token token
});


$TokenCopyWith<$Res> get token;

}
/// @nodoc
class _$ResettingPasscodeStatusCopyWithImpl<$Res>
    implements $ResettingPasscodeStatusCopyWith<$Res> {
  _$ResettingPasscodeStatusCopyWithImpl(this._self, this._then);

  final ResettingPasscodeStatus _self;
  final $Res Function(ResettingPasscodeStatus) _then;

/// Create a copy of UserSessionStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? token = null,}) {
  return _then(ResettingPasscodeStatus(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as Token,
  ));
}

/// Create a copy of UserSessionStatus
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokenCopyWith<$Res> get token {
  
  return $TokenCopyWith<$Res>(_self.token, (value) {
    return _then(_self.copyWith(token: value));
  });
}
}

// dart format on
