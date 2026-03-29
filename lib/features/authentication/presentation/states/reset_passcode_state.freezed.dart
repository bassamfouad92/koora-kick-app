// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_passcode_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResetPasscodeStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasscodeStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResetPasscodeStatus()';
}


}

/// @nodoc
class $ResetPasscodeStatusCopyWith<$Res>  {
$ResetPasscodeStatusCopyWith(ResetPasscodeStatus _, $Res Function(ResetPasscodeStatus) __);
}


/// Adds pattern-matching-related methods to [ResetPasscodeStatus].
extension ResetPasscodeStatusPatterns on ResetPasscodeStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Error value)?  error,TResult Function( _Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Error() when error != null:
return error(_that);case _Success() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Error value)  error,required TResult Function( _Success value)  success,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Error():
return error(_that);case _Success():
return success(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Error value)?  error,TResult? Function( _Success value)?  success,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Error() when error != null:
return error(_that);case _Success() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( AppError error)?  error,TResult Function( Token token)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error(_that.error);case _Success() when success != null:
return success(_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( AppError error)  error,required TResult Function( Token token)  success,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Error():
return error(_that.error);case _Success():
return success(_that.token);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( AppError error)?  error,TResult? Function( Token token)?  success,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error(_that.error);case _Success() when success != null:
return success(_that.token);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ResetPasscodeStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResetPasscodeStatus.initial()';
}


}




/// @nodoc


class _Loading implements ResetPasscodeStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResetPasscodeStatus.loading()';
}


}




/// @nodoc


class _Error implements ResetPasscodeStatus {
  const _Error(this.error);
  

 final  AppError error;

/// Create a copy of ResetPasscodeStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ResetPasscodeStatus.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ResetPasscodeStatusCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 AppError error
});


$AppErrorCopyWith<$Res> get error;

}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of ResetPasscodeStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of ResetPasscodeStatus
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppErrorCopyWith<$Res> get error {
  
  return $AppErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc


class _Success implements ResetPasscodeStatus {
  const _Success({required this.token});
  

 final  Token token;

/// Create a copy of ResetPasscodeStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'ResetPasscodeStatus.success(token: $token)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $ResetPasscodeStatusCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 Token token
});


$TokenCopyWith<$Res> get token;

}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of ResetPasscodeStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? token = null,}) {
  return _then(_Success(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as Token,
  ));
}

/// Create a copy of ResetPasscodeStatus
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
mixin _$ResetPasscodeFormErrors {

 String? get phoneNumber;
/// Create a copy of ResetPasscodeFormErrors
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasscodeFormErrorsCopyWith<ResetPasscodeFormErrors> get copyWith => _$ResetPasscodeFormErrorsCopyWithImpl<ResetPasscodeFormErrors>(this as ResetPasscodeFormErrors, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasscodeFormErrors&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'ResetPasscodeFormErrors(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class $ResetPasscodeFormErrorsCopyWith<$Res>  {
  factory $ResetPasscodeFormErrorsCopyWith(ResetPasscodeFormErrors value, $Res Function(ResetPasscodeFormErrors) _then) = _$ResetPasscodeFormErrorsCopyWithImpl;
@useResult
$Res call({
 String? phoneNumber
});




}
/// @nodoc
class _$ResetPasscodeFormErrorsCopyWithImpl<$Res>
    implements $ResetPasscodeFormErrorsCopyWith<$Res> {
  _$ResetPasscodeFormErrorsCopyWithImpl(this._self, this._then);

  final ResetPasscodeFormErrors _self;
  final $Res Function(ResetPasscodeFormErrors) _then;

/// Create a copy of ResetPasscodeFormErrors
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneNumber = freezed,}) {
  return _then(_self.copyWith(
phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ResetPasscodeFormErrors].
extension ResetPasscodeFormErrorsPatterns on ResetPasscodeFormErrors {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResetPasscodeFormErrors value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResetPasscodeFormErrors() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResetPasscodeFormErrors value)  $default,){
final _that = this;
switch (_that) {
case _ResetPasscodeFormErrors():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResetPasscodeFormErrors value)?  $default,){
final _that = this;
switch (_that) {
case _ResetPasscodeFormErrors() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? phoneNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResetPasscodeFormErrors() when $default != null:
return $default(_that.phoneNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? phoneNumber)  $default,) {final _that = this;
switch (_that) {
case _ResetPasscodeFormErrors():
return $default(_that.phoneNumber);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? phoneNumber)?  $default,) {final _that = this;
switch (_that) {
case _ResetPasscodeFormErrors() when $default != null:
return $default(_that.phoneNumber);case _:
  return null;

}
}

}

/// @nodoc


class _ResetPasscodeFormErrors extends ResetPasscodeFormErrors {
  const _ResetPasscodeFormErrors({this.phoneNumber = null}): super._();
  

@override@JsonKey() final  String? phoneNumber;

/// Create a copy of ResetPasscodeFormErrors
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResetPasscodeFormErrorsCopyWith<_ResetPasscodeFormErrors> get copyWith => __$ResetPasscodeFormErrorsCopyWithImpl<_ResetPasscodeFormErrors>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetPasscodeFormErrors&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'ResetPasscodeFormErrors(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class _$ResetPasscodeFormErrorsCopyWith<$Res> implements $ResetPasscodeFormErrorsCopyWith<$Res> {
  factory _$ResetPasscodeFormErrorsCopyWith(_ResetPasscodeFormErrors value, $Res Function(_ResetPasscodeFormErrors) _then) = __$ResetPasscodeFormErrorsCopyWithImpl;
@override @useResult
$Res call({
 String? phoneNumber
});




}
/// @nodoc
class __$ResetPasscodeFormErrorsCopyWithImpl<$Res>
    implements _$ResetPasscodeFormErrorsCopyWith<$Res> {
  __$ResetPasscodeFormErrorsCopyWithImpl(this._self, this._then);

  final _ResetPasscodeFormErrors _self;
  final $Res Function(_ResetPasscodeFormErrors) _then;

/// Create a copy of ResetPasscodeFormErrors
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = freezed,}) {
  return _then(_ResetPasscodeFormErrors(
phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ResetPasscodeState {

 ResetPasscodeStatus get status; PhoneNumber get phoneNumber; CountryModel get country; ResetPasscodeFormErrors get formErrors;
/// Create a copy of ResetPasscodeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasscodeStateCopyWith<ResetPasscodeState> get copyWith => _$ResetPasscodeStateCopyWithImpl<ResetPasscodeState>(this as ResetPasscodeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasscodeState&&(identical(other.status, status) || other.status == status)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.country, country) || other.country == country)&&(identical(other.formErrors, formErrors) || other.formErrors == formErrors));
}


@override
int get hashCode => Object.hash(runtimeType,status,phoneNumber,country,formErrors);

@override
String toString() {
  return 'ResetPasscodeState(status: $status, phoneNumber: $phoneNumber, country: $country, formErrors: $formErrors)';
}


}

/// @nodoc
abstract mixin class $ResetPasscodeStateCopyWith<$Res>  {
  factory $ResetPasscodeStateCopyWith(ResetPasscodeState value, $Res Function(ResetPasscodeState) _then) = _$ResetPasscodeStateCopyWithImpl;
@useResult
$Res call({
 ResetPasscodeStatus status, PhoneNumber phoneNumber, CountryModel country, ResetPasscodeFormErrors formErrors
});


$ResetPasscodeStatusCopyWith<$Res> get status;$PhoneNumberCopyWith<$Res> get phoneNumber;$CountryModelCopyWith<$Res> get country;$ResetPasscodeFormErrorsCopyWith<$Res> get formErrors;

}
/// @nodoc
class _$ResetPasscodeStateCopyWithImpl<$Res>
    implements $ResetPasscodeStateCopyWith<$Res> {
  _$ResetPasscodeStateCopyWithImpl(this._self, this._then);

  final ResetPasscodeState _self;
  final $Res Function(ResetPasscodeState) _then;

/// Create a copy of ResetPasscodeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? phoneNumber = null,Object? country = null,Object? formErrors = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ResetPasscodeStatus,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as PhoneNumber,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as CountryModel,formErrors: null == formErrors ? _self.formErrors : formErrors // ignore: cast_nullable_to_non_nullable
as ResetPasscodeFormErrors,
  ));
}
/// Create a copy of ResetPasscodeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResetPasscodeStatusCopyWith<$Res> get status {
  
  return $ResetPasscodeStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ResetPasscodeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhoneNumberCopyWith<$Res> get phoneNumber {
  
  return $PhoneNumberCopyWith<$Res>(_self.phoneNumber, (value) {
    return _then(_self.copyWith(phoneNumber: value));
  });
}/// Create a copy of ResetPasscodeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryModelCopyWith<$Res> get country {
  
  return $CountryModelCopyWith<$Res>(_self.country, (value) {
    return _then(_self.copyWith(country: value));
  });
}/// Create a copy of ResetPasscodeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResetPasscodeFormErrorsCopyWith<$Res> get formErrors {
  
  return $ResetPasscodeFormErrorsCopyWith<$Res>(_self.formErrors, (value) {
    return _then(_self.copyWith(formErrors: value));
  });
}
}


/// Adds pattern-matching-related methods to [ResetPasscodeState].
extension ResetPasscodeStatePatterns on ResetPasscodeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResetPasscodeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResetPasscodeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResetPasscodeState value)  $default,){
final _that = this;
switch (_that) {
case _ResetPasscodeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResetPasscodeState value)?  $default,){
final _that = this;
switch (_that) {
case _ResetPasscodeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ResetPasscodeStatus status,  PhoneNumber phoneNumber,  CountryModel country,  ResetPasscodeFormErrors formErrors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResetPasscodeState() when $default != null:
return $default(_that.status,_that.phoneNumber,_that.country,_that.formErrors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ResetPasscodeStatus status,  PhoneNumber phoneNumber,  CountryModel country,  ResetPasscodeFormErrors formErrors)  $default,) {final _that = this;
switch (_that) {
case _ResetPasscodeState():
return $default(_that.status,_that.phoneNumber,_that.country,_that.formErrors);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ResetPasscodeStatus status,  PhoneNumber phoneNumber,  CountryModel country,  ResetPasscodeFormErrors formErrors)?  $default,) {final _that = this;
switch (_that) {
case _ResetPasscodeState() when $default != null:
return $default(_that.status,_that.phoneNumber,_that.country,_that.formErrors);case _:
  return null;

}
}

}

/// @nodoc


class _ResetPasscodeState extends ResetPasscodeState {
  const _ResetPasscodeState({this.status = const ResetPasscodeStatus.initial(), this.phoneNumber = const PhoneNumber(number: '', countryCode: '20'), this.country = CountryModel.defaultCountry, this.formErrors = const ResetPasscodeFormErrors()}): super._();
  

@override@JsonKey() final  ResetPasscodeStatus status;
@override@JsonKey() final  PhoneNumber phoneNumber;
@override@JsonKey() final  CountryModel country;
@override@JsonKey() final  ResetPasscodeFormErrors formErrors;

/// Create a copy of ResetPasscodeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResetPasscodeStateCopyWith<_ResetPasscodeState> get copyWith => __$ResetPasscodeStateCopyWithImpl<_ResetPasscodeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetPasscodeState&&(identical(other.status, status) || other.status == status)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.country, country) || other.country == country)&&(identical(other.formErrors, formErrors) || other.formErrors == formErrors));
}


@override
int get hashCode => Object.hash(runtimeType,status,phoneNumber,country,formErrors);

@override
String toString() {
  return 'ResetPasscodeState(status: $status, phoneNumber: $phoneNumber, country: $country, formErrors: $formErrors)';
}


}

/// @nodoc
abstract mixin class _$ResetPasscodeStateCopyWith<$Res> implements $ResetPasscodeStateCopyWith<$Res> {
  factory _$ResetPasscodeStateCopyWith(_ResetPasscodeState value, $Res Function(_ResetPasscodeState) _then) = __$ResetPasscodeStateCopyWithImpl;
@override @useResult
$Res call({
 ResetPasscodeStatus status, PhoneNumber phoneNumber, CountryModel country, ResetPasscodeFormErrors formErrors
});


@override $ResetPasscodeStatusCopyWith<$Res> get status;@override $PhoneNumberCopyWith<$Res> get phoneNumber;@override $CountryModelCopyWith<$Res> get country;@override $ResetPasscodeFormErrorsCopyWith<$Res> get formErrors;

}
/// @nodoc
class __$ResetPasscodeStateCopyWithImpl<$Res>
    implements _$ResetPasscodeStateCopyWith<$Res> {
  __$ResetPasscodeStateCopyWithImpl(this._self, this._then);

  final _ResetPasscodeState _self;
  final $Res Function(_ResetPasscodeState) _then;

/// Create a copy of ResetPasscodeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? phoneNumber = null,Object? country = null,Object? formErrors = null,}) {
  return _then(_ResetPasscodeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ResetPasscodeStatus,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as PhoneNumber,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as CountryModel,formErrors: null == formErrors ? _self.formErrors : formErrors // ignore: cast_nullable_to_non_nullable
as ResetPasscodeFormErrors,
  ));
}

/// Create a copy of ResetPasscodeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResetPasscodeStatusCopyWith<$Res> get status {
  
  return $ResetPasscodeStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ResetPasscodeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhoneNumberCopyWith<$Res> get phoneNumber {
  
  return $PhoneNumberCopyWith<$Res>(_self.phoneNumber, (value) {
    return _then(_self.copyWith(phoneNumber: value));
  });
}/// Create a copy of ResetPasscodeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryModelCopyWith<$Res> get country {
  
  return $CountryModelCopyWith<$Res>(_self.country, (value) {
    return _then(_self.copyWith(country: value));
  });
}/// Create a copy of ResetPasscodeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResetPasscodeFormErrorsCopyWith<$Res> get formErrors {
  
  return $ResetPasscodeFormErrorsCopyWith<$Res>(_self.formErrors, (value) {
    return _then(_self.copyWith(formErrors: value));
  });
}
}

// dart format on
