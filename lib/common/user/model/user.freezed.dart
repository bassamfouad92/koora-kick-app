// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Token {

 String? get raw; int? get iat; int? get exp; String? get jti; User? get user; String? get aud; String? get userType;
/// Create a copy of Token
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenCopyWith<Token> get copyWith => _$TokenCopyWithImpl<Token>(this as Token, _$identity);

  /// Serializes this Token to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Token&&(identical(other.raw, raw) || other.raw == raw)&&(identical(other.iat, iat) || other.iat == iat)&&(identical(other.exp, exp) || other.exp == exp)&&(identical(other.jti, jti) || other.jti == jti)&&(identical(other.user, user) || other.user == user)&&(identical(other.aud, aud) || other.aud == aud)&&(identical(other.userType, userType) || other.userType == userType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,raw,iat,exp,jti,user,aud,userType);

@override
String toString() {
  return 'Token(raw: $raw, iat: $iat, exp: $exp, jti: $jti, user: $user, aud: $aud, userType: $userType)';
}


}

/// @nodoc
abstract mixin class $TokenCopyWith<$Res>  {
  factory $TokenCopyWith(Token value, $Res Function(Token) _then) = _$TokenCopyWithImpl;
@useResult
$Res call({
 String? raw, int? iat, int? exp, String? jti, User? user, String? aud, String? userType
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$TokenCopyWithImpl<$Res>
    implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._self, this._then);

  final Token _self;
  final $Res Function(Token) _then;

/// Create a copy of Token
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? raw = freezed,Object? iat = freezed,Object? exp = freezed,Object? jti = freezed,Object? user = freezed,Object? aud = freezed,Object? userType = freezed,}) {
  return _then(_self.copyWith(
raw: freezed == raw ? _self.raw : raw // ignore: cast_nullable_to_non_nullable
as String?,iat: freezed == iat ? _self.iat : iat // ignore: cast_nullable_to_non_nullable
as int?,exp: freezed == exp ? _self.exp : exp // ignore: cast_nullable_to_non_nullable
as int?,jti: freezed == jti ? _self.jti : jti // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,aud: freezed == aud ? _self.aud : aud // ignore: cast_nullable_to_non_nullable
as String?,userType: freezed == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Token
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [Token].
extension TokenPatterns on Token {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Token value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Token() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Token value)  $default,){
final _that = this;
switch (_that) {
case _Token():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Token value)?  $default,){
final _that = this;
switch (_that) {
case _Token() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? raw,  int? iat,  int? exp,  String? jti,  User? user,  String? aud,  String? userType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Token() when $default != null:
return $default(_that.raw,_that.iat,_that.exp,_that.jti,_that.user,_that.aud,_that.userType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? raw,  int? iat,  int? exp,  String? jti,  User? user,  String? aud,  String? userType)  $default,) {final _that = this;
switch (_that) {
case _Token():
return $default(_that.raw,_that.iat,_that.exp,_that.jti,_that.user,_that.aud,_that.userType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? raw,  int? iat,  int? exp,  String? jti,  User? user,  String? aud,  String? userType)?  $default,) {final _that = this;
switch (_that) {
case _Token() when $default != null:
return $default(_that.raw,_that.iat,_that.exp,_that.jti,_that.user,_that.aud,_that.userType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Token implements Token {
  const _Token({this.raw, this.iat, this.exp, this.jti, this.user, this.aud, this.userType});
  factory _Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

@override final  String? raw;
@override final  int? iat;
@override final  int? exp;
@override final  String? jti;
@override final  User? user;
@override final  String? aud;
@override final  String? userType;

/// Create a copy of Token
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenCopyWith<_Token> get copyWith => __$TokenCopyWithImpl<_Token>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Token&&(identical(other.raw, raw) || other.raw == raw)&&(identical(other.iat, iat) || other.iat == iat)&&(identical(other.exp, exp) || other.exp == exp)&&(identical(other.jti, jti) || other.jti == jti)&&(identical(other.user, user) || other.user == user)&&(identical(other.aud, aud) || other.aud == aud)&&(identical(other.userType, userType) || other.userType == userType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,raw,iat,exp,jti,user,aud,userType);

@override
String toString() {
  return 'Token(raw: $raw, iat: $iat, exp: $exp, jti: $jti, user: $user, aud: $aud, userType: $userType)';
}


}

/// @nodoc
abstract mixin class _$TokenCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$TokenCopyWith(_Token value, $Res Function(_Token) _then) = __$TokenCopyWithImpl;
@override @useResult
$Res call({
 String? raw, int? iat, int? exp, String? jti, User? user, String? aud, String? userType
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$TokenCopyWithImpl<$Res>
    implements _$TokenCopyWith<$Res> {
  __$TokenCopyWithImpl(this._self, this._then);

  final _Token _self;
  final $Res Function(_Token) _then;

/// Create a copy of Token
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? raw = freezed,Object? iat = freezed,Object? exp = freezed,Object? jti = freezed,Object? user = freezed,Object? aud = freezed,Object? userType = freezed,}) {
  return _then(_Token(
raw: freezed == raw ? _self.raw : raw // ignore: cast_nullable_to_non_nullable
as String?,iat: freezed == iat ? _self.iat : iat // ignore: cast_nullable_to_non_nullable
as int?,exp: freezed == exp ? _self.exp : exp // ignore: cast_nullable_to_non_nullable
as int?,jti: freezed == jti ? _self.jti : jti // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,aud: freezed == aud ? _self.aud : aud // ignore: cast_nullable_to_non_nullable
as String?,userType: freezed == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Token
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$User {

@JsonKey(name: '_id') String? get id; String? get name; String? get email; String get phone; bool? get verified; bool? get active; String? get picture; double get rating;@JsonKey(name: 'document_verification_status') String? get documentVerificationStatus;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.active, active) || other.active == active)&&(identical(other.picture, picture) || other.picture == picture)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.documentVerificationStatus, documentVerificationStatus) || other.documentVerificationStatus == documentVerificationStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,verified,active,picture,rating,documentVerificationStatus);

@override
String toString() {
  return 'User(id: $id, name: $name, email: $email, phone: $phone, verified: $verified, active: $active, picture: $picture, rating: $rating, documentVerificationStatus: $documentVerificationStatus)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String? id, String? name, String? email, String phone, bool? verified, bool? active, String? picture, double rating,@JsonKey(name: 'document_verification_status') String? documentVerificationStatus
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phone = null,Object? verified = freezed,Object? active = freezed,Object? picture = freezed,Object? rating = null,Object? documentVerificationStatus = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,verified: freezed == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,picture: freezed == picture ? _self.picture : picture // ignore: cast_nullable_to_non_nullable
as String?,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,documentVerificationStatus: freezed == documentVerificationStatus ? _self.documentVerificationStatus : documentVerificationStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id,  String? name,  String? email,  String phone,  bool? verified,  bool? active,  String? picture,  double rating, @JsonKey(name: 'document_verification_status')  String? documentVerificationStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.verified,_that.active,_that.picture,_that.rating,_that.documentVerificationStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id,  String? name,  String? email,  String phone,  bool? verified,  bool? active,  String? picture,  double rating, @JsonKey(name: 'document_verification_status')  String? documentVerificationStatus)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.name,_that.email,_that.phone,_that.verified,_that.active,_that.picture,_that.rating,_that.documentVerificationStatus);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String? id,  String? name,  String? email,  String phone,  bool? verified,  bool? active,  String? picture,  double rating, @JsonKey(name: 'document_verification_status')  String? documentVerificationStatus)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.verified,_that.active,_that.picture,_that.rating,_that.documentVerificationStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User extends User {
  const _User({@JsonKey(name: '_id') this.id, this.name, this.email, required this.phone, this.verified, this.active, this.picture, this.rating = 0.0, @JsonKey(name: 'document_verification_status') this.documentVerificationStatus}): super._();
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override@JsonKey(name: '_id') final  String? id;
@override final  String? name;
@override final  String? email;
@override final  String phone;
@override final  bool? verified;
@override final  bool? active;
@override final  String? picture;
@override@JsonKey() final  double rating;
@override@JsonKey(name: 'document_verification_status') final  String? documentVerificationStatus;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.active, active) || other.active == active)&&(identical(other.picture, picture) || other.picture == picture)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.documentVerificationStatus, documentVerificationStatus) || other.documentVerificationStatus == documentVerificationStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,verified,active,picture,rating,documentVerificationStatus);

@override
String toString() {
  return 'User(id: $id, name: $name, email: $email, phone: $phone, verified: $verified, active: $active, picture: $picture, rating: $rating, documentVerificationStatus: $documentVerificationStatus)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String? id, String? name, String? email, String phone, bool? verified, bool? active, String? picture, double rating,@JsonKey(name: 'document_verification_status') String? documentVerificationStatus
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phone = null,Object? verified = freezed,Object? active = freezed,Object? picture = freezed,Object? rating = null,Object? documentVerificationStatus = freezed,}) {
  return _then(_User(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,verified: freezed == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,picture: freezed == picture ? _self.picture : picture // ignore: cast_nullable_to_non_nullable
as String?,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,documentVerificationStatus: freezed == documentVerificationStatus ? _self.documentVerificationStatus : documentVerificationStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
