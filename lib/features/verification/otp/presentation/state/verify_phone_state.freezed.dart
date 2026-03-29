// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_phone_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerifyPhoneStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyPhoneStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyPhoneStatus()';
}


}

/// @nodoc
class $VerifyPhoneStatusCopyWith<$Res>  {
$VerifyPhoneStatusCopyWith(VerifyPhoneStatus _, $Res Function(VerifyPhoneStatus) __);
}


/// Adds pattern-matching-related methods to [VerifyPhoneStatus].
extension VerifyPhoneStatusPatterns on VerifyPhoneStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Error value)?  error,TResult Function( _VerifyOtpSuccess value)?  verifyOtpSuccess,TResult Function( _SendOtpSuccess value)?  sendOtpSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Error() when error != null:
return error(_that);case _VerifyOtpSuccess() when verifyOtpSuccess != null:
return verifyOtpSuccess(_that);case _SendOtpSuccess() when sendOtpSuccess != null:
return sendOtpSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Error value)  error,required TResult Function( _VerifyOtpSuccess value)  verifyOtpSuccess,required TResult Function( _SendOtpSuccess value)  sendOtpSuccess,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Error():
return error(_that);case _VerifyOtpSuccess():
return verifyOtpSuccess(_that);case _SendOtpSuccess():
return sendOtpSuccess(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Error value)?  error,TResult? Function( _VerifyOtpSuccess value)?  verifyOtpSuccess,TResult? Function( _SendOtpSuccess value)?  sendOtpSuccess,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Error() when error != null:
return error(_that);case _VerifyOtpSuccess() when verifyOtpSuccess != null:
return verifyOtpSuccess(_that);case _SendOtpSuccess() when sendOtpSuccess != null:
return sendOtpSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( AppError error)?  error,TResult Function( bool isResetPasscode)?  verifyOtpSuccess,TResult Function()?  sendOtpSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error(_that.error);case _VerifyOtpSuccess() when verifyOtpSuccess != null:
return verifyOtpSuccess(_that.isResetPasscode);case _SendOtpSuccess() when sendOtpSuccess != null:
return sendOtpSuccess();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( AppError error)  error,required TResult Function( bool isResetPasscode)  verifyOtpSuccess,required TResult Function()  sendOtpSuccess,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Error():
return error(_that.error);case _VerifyOtpSuccess():
return verifyOtpSuccess(_that.isResetPasscode);case _SendOtpSuccess():
return sendOtpSuccess();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( AppError error)?  error,TResult? Function( bool isResetPasscode)?  verifyOtpSuccess,TResult? Function()?  sendOtpSuccess,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error(_that.error);case _VerifyOtpSuccess() when verifyOtpSuccess != null:
return verifyOtpSuccess(_that.isResetPasscode);case _SendOtpSuccess() when sendOtpSuccess != null:
return sendOtpSuccess();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements VerifyPhoneStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyPhoneStatus.initial()';
}


}




/// @nodoc


class _Loading implements VerifyPhoneStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyPhoneStatus.loading()';
}


}




/// @nodoc


class _Error implements VerifyPhoneStatus {
  const _Error(this.error);
  

 final  AppError error;

/// Create a copy of VerifyPhoneStatus
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
  return 'VerifyPhoneStatus.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $VerifyPhoneStatusCopyWith<$Res> {
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

/// Create a copy of VerifyPhoneStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of VerifyPhoneStatus
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


class _VerifyOtpSuccess implements VerifyPhoneStatus {
  const _VerifyOtpSuccess({this.isResetPasscode = false});
  

@JsonKey() final  bool isResetPasscode;

/// Create a copy of VerifyPhoneStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyOtpSuccessCopyWith<_VerifyOtpSuccess> get copyWith => __$VerifyOtpSuccessCopyWithImpl<_VerifyOtpSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyOtpSuccess&&(identical(other.isResetPasscode, isResetPasscode) || other.isResetPasscode == isResetPasscode));
}


@override
int get hashCode => Object.hash(runtimeType,isResetPasscode);

@override
String toString() {
  return 'VerifyPhoneStatus.verifyOtpSuccess(isResetPasscode: $isResetPasscode)';
}


}

/// @nodoc
abstract mixin class _$VerifyOtpSuccessCopyWith<$Res> implements $VerifyPhoneStatusCopyWith<$Res> {
  factory _$VerifyOtpSuccessCopyWith(_VerifyOtpSuccess value, $Res Function(_VerifyOtpSuccess) _then) = __$VerifyOtpSuccessCopyWithImpl;
@useResult
$Res call({
 bool isResetPasscode
});




}
/// @nodoc
class __$VerifyOtpSuccessCopyWithImpl<$Res>
    implements _$VerifyOtpSuccessCopyWith<$Res> {
  __$VerifyOtpSuccessCopyWithImpl(this._self, this._then);

  final _VerifyOtpSuccess _self;
  final $Res Function(_VerifyOtpSuccess) _then;

/// Create a copy of VerifyPhoneStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isResetPasscode = null,}) {
  return _then(_VerifyOtpSuccess(
isResetPasscode: null == isResetPasscode ? _self.isResetPasscode : isResetPasscode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _SendOtpSuccess implements VerifyPhoneStatus {
  const _SendOtpSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendOtpSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyPhoneStatus.sendOtpSuccess()';
}


}




/// @nodoc
mixin _$VerifyPhoneState {

 PhoneNumber get phoneNumber; int get secondsRemaining; bool get canResend; VerifyPhoneStatus get verifyStatus; AppError? get error; String? get formError;
/// Create a copy of VerifyPhoneState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyPhoneStateCopyWith<VerifyPhoneState> get copyWith => _$VerifyPhoneStateCopyWithImpl<VerifyPhoneState>(this as VerifyPhoneState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyPhoneState&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.secondsRemaining, secondsRemaining) || other.secondsRemaining == secondsRemaining)&&(identical(other.canResend, canResend) || other.canResend == canResend)&&(identical(other.verifyStatus, verifyStatus) || other.verifyStatus == verifyStatus)&&(identical(other.error, error) || other.error == error)&&(identical(other.formError, formError) || other.formError == formError));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,secondsRemaining,canResend,verifyStatus,error,formError);

@override
String toString() {
  return 'VerifyPhoneState(phoneNumber: $phoneNumber, secondsRemaining: $secondsRemaining, canResend: $canResend, verifyStatus: $verifyStatus, error: $error, formError: $formError)';
}


}

/// @nodoc
abstract mixin class $VerifyPhoneStateCopyWith<$Res>  {
  factory $VerifyPhoneStateCopyWith(VerifyPhoneState value, $Res Function(VerifyPhoneState) _then) = _$VerifyPhoneStateCopyWithImpl;
@useResult
$Res call({
 PhoneNumber phoneNumber, int secondsRemaining, bool canResend, VerifyPhoneStatus verifyStatus, AppError? error, String? formError
});


$PhoneNumberCopyWith<$Res> get phoneNumber;$VerifyPhoneStatusCopyWith<$Res> get verifyStatus;$AppErrorCopyWith<$Res>? get error;

}
/// @nodoc
class _$VerifyPhoneStateCopyWithImpl<$Res>
    implements $VerifyPhoneStateCopyWith<$Res> {
  _$VerifyPhoneStateCopyWithImpl(this._self, this._then);

  final VerifyPhoneState _self;
  final $Res Function(VerifyPhoneState) _then;

/// Create a copy of VerifyPhoneState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneNumber = null,Object? secondsRemaining = null,Object? canResend = null,Object? verifyStatus = null,Object? error = freezed,Object? formError = freezed,}) {
  return _then(_self.copyWith(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as PhoneNumber,secondsRemaining: null == secondsRemaining ? _self.secondsRemaining : secondsRemaining // ignore: cast_nullable_to_non_nullable
as int,canResend: null == canResend ? _self.canResend : canResend // ignore: cast_nullable_to_non_nullable
as bool,verifyStatus: null == verifyStatus ? _self.verifyStatus : verifyStatus // ignore: cast_nullable_to_non_nullable
as VerifyPhoneStatus,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError?,formError: freezed == formError ? _self.formError : formError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of VerifyPhoneState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhoneNumberCopyWith<$Res> get phoneNumber {
  
  return $PhoneNumberCopyWith<$Res>(_self.phoneNumber, (value) {
    return _then(_self.copyWith(phoneNumber: value));
  });
}/// Create a copy of VerifyPhoneState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerifyPhoneStatusCopyWith<$Res> get verifyStatus {
  
  return $VerifyPhoneStatusCopyWith<$Res>(_self.verifyStatus, (value) {
    return _then(_self.copyWith(verifyStatus: value));
  });
}/// Create a copy of VerifyPhoneState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $AppErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}


/// Adds pattern-matching-related methods to [VerifyPhoneState].
extension VerifyPhoneStatePatterns on VerifyPhoneState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyPhoneState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyPhoneState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyPhoneState value)  $default,){
final _that = this;
switch (_that) {
case _VerifyPhoneState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyPhoneState value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyPhoneState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PhoneNumber phoneNumber,  int secondsRemaining,  bool canResend,  VerifyPhoneStatus verifyStatus,  AppError? error,  String? formError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyPhoneState() when $default != null:
return $default(_that.phoneNumber,_that.secondsRemaining,_that.canResend,_that.verifyStatus,_that.error,_that.formError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PhoneNumber phoneNumber,  int secondsRemaining,  bool canResend,  VerifyPhoneStatus verifyStatus,  AppError? error,  String? formError)  $default,) {final _that = this;
switch (_that) {
case _VerifyPhoneState():
return $default(_that.phoneNumber,_that.secondsRemaining,_that.canResend,_that.verifyStatus,_that.error,_that.formError);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PhoneNumber phoneNumber,  int secondsRemaining,  bool canResend,  VerifyPhoneStatus verifyStatus,  AppError? error,  String? formError)?  $default,) {final _that = this;
switch (_that) {
case _VerifyPhoneState() when $default != null:
return $default(_that.phoneNumber,_that.secondsRemaining,_that.canResend,_that.verifyStatus,_that.error,_that.formError);case _:
  return null;

}
}

}

/// @nodoc


class _VerifyPhoneState implements VerifyPhoneState {
  const _VerifyPhoneState({required this.phoneNumber, this.secondsRemaining = VerifyPhoneViewModel.initialCountdown, this.canResend = false, this.verifyStatus = const VerifyPhoneStatus.initial(), this.error, this.formError = null});
  

@override final  PhoneNumber phoneNumber;
@override@JsonKey() final  int secondsRemaining;
@override@JsonKey() final  bool canResend;
@override@JsonKey() final  VerifyPhoneStatus verifyStatus;
@override final  AppError? error;
@override@JsonKey() final  String? formError;

/// Create a copy of VerifyPhoneState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyPhoneStateCopyWith<_VerifyPhoneState> get copyWith => __$VerifyPhoneStateCopyWithImpl<_VerifyPhoneState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyPhoneState&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.secondsRemaining, secondsRemaining) || other.secondsRemaining == secondsRemaining)&&(identical(other.canResend, canResend) || other.canResend == canResend)&&(identical(other.verifyStatus, verifyStatus) || other.verifyStatus == verifyStatus)&&(identical(other.error, error) || other.error == error)&&(identical(other.formError, formError) || other.formError == formError));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,secondsRemaining,canResend,verifyStatus,error,formError);

@override
String toString() {
  return 'VerifyPhoneState(phoneNumber: $phoneNumber, secondsRemaining: $secondsRemaining, canResend: $canResend, verifyStatus: $verifyStatus, error: $error, formError: $formError)';
}


}

/// @nodoc
abstract mixin class _$VerifyPhoneStateCopyWith<$Res> implements $VerifyPhoneStateCopyWith<$Res> {
  factory _$VerifyPhoneStateCopyWith(_VerifyPhoneState value, $Res Function(_VerifyPhoneState) _then) = __$VerifyPhoneStateCopyWithImpl;
@override @useResult
$Res call({
 PhoneNumber phoneNumber, int secondsRemaining, bool canResend, VerifyPhoneStatus verifyStatus, AppError? error, String? formError
});


@override $PhoneNumberCopyWith<$Res> get phoneNumber;@override $VerifyPhoneStatusCopyWith<$Res> get verifyStatus;@override $AppErrorCopyWith<$Res>? get error;

}
/// @nodoc
class __$VerifyPhoneStateCopyWithImpl<$Res>
    implements _$VerifyPhoneStateCopyWith<$Res> {
  __$VerifyPhoneStateCopyWithImpl(this._self, this._then);

  final _VerifyPhoneState _self;
  final $Res Function(_VerifyPhoneState) _then;

/// Create a copy of VerifyPhoneState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? secondsRemaining = null,Object? canResend = null,Object? verifyStatus = null,Object? error = freezed,Object? formError = freezed,}) {
  return _then(_VerifyPhoneState(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as PhoneNumber,secondsRemaining: null == secondsRemaining ? _self.secondsRemaining : secondsRemaining // ignore: cast_nullable_to_non_nullable
as int,canResend: null == canResend ? _self.canResend : canResend // ignore: cast_nullable_to_non_nullable
as bool,verifyStatus: null == verifyStatus ? _self.verifyStatus : verifyStatus // ignore: cast_nullable_to_non_nullable
as VerifyPhoneStatus,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError?,formError: freezed == formError ? _self.formError : formError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of VerifyPhoneState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhoneNumberCopyWith<$Res> get phoneNumber {
  
  return $PhoneNumberCopyWith<$Res>(_self.phoneNumber, (value) {
    return _then(_self.copyWith(phoneNumber: value));
  });
}/// Create a copy of VerifyPhoneState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerifyPhoneStatusCopyWith<$Res> get verifyStatus {
  
  return $VerifyPhoneStatusCopyWith<$Res>(_self.verifyStatus, (value) {
    return _then(_self.copyWith(verifyStatus: value));
  });
}/// Create a copy of VerifyPhoneState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $AppErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
