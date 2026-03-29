// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_new_passcode_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateNewPasscodeStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateNewPasscodeStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateNewPasscodeStatus()';
}


}

/// @nodoc
class $CreateNewPasscodeStatusCopyWith<$Res>  {
$CreateNewPasscodeStatusCopyWith(CreateNewPasscodeStatus _, $Res Function(CreateNewPasscodeStatus) __);
}


/// Adds pattern-matching-related methods to [CreateNewPasscodeStatus].
extension CreateNewPasscodeStatusPatterns on CreateNewPasscodeStatus {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( AppError error)?  error,TResult Function()?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error(_that.error);case _Success() when success != null:
return success();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( AppError error)  error,required TResult Function()  success,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Error():
return error(_that.error);case _Success():
return success();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( AppError error)?  error,TResult? Function()?  success,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error(_that.error);case _Success() when success != null:
return success();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CreateNewPasscodeStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateNewPasscodeStatus.initial()';
}


}




/// @nodoc


class _Loading implements CreateNewPasscodeStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateNewPasscodeStatus.loading()';
}


}




/// @nodoc


class _Error implements CreateNewPasscodeStatus {
  const _Error(this.error);
  

 final  AppError error;

/// Create a copy of CreateNewPasscodeStatus
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
  return 'CreateNewPasscodeStatus.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $CreateNewPasscodeStatusCopyWith<$Res> {
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

/// Create a copy of CreateNewPasscodeStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of CreateNewPasscodeStatus
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


class _Success implements CreateNewPasscodeStatus {
  const _Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateNewPasscodeStatus.success()';
}


}




/// @nodoc
mixin _$CreateNewPasscodeFormErrors {

 String? get passcode; String? get confirmPasscode;
/// Create a copy of CreateNewPasscodeFormErrors
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateNewPasscodeFormErrorsCopyWith<CreateNewPasscodeFormErrors> get copyWith => _$CreateNewPasscodeFormErrorsCopyWithImpl<CreateNewPasscodeFormErrors>(this as CreateNewPasscodeFormErrors, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateNewPasscodeFormErrors&&(identical(other.passcode, passcode) || other.passcode == passcode)&&(identical(other.confirmPasscode, confirmPasscode) || other.confirmPasscode == confirmPasscode));
}


@override
int get hashCode => Object.hash(runtimeType,passcode,confirmPasscode);

@override
String toString() {
  return 'CreateNewPasscodeFormErrors(passcode: $passcode, confirmPasscode: $confirmPasscode)';
}


}

/// @nodoc
abstract mixin class $CreateNewPasscodeFormErrorsCopyWith<$Res>  {
  factory $CreateNewPasscodeFormErrorsCopyWith(CreateNewPasscodeFormErrors value, $Res Function(CreateNewPasscodeFormErrors) _then) = _$CreateNewPasscodeFormErrorsCopyWithImpl;
@useResult
$Res call({
 String? passcode, String? confirmPasscode
});




}
/// @nodoc
class _$CreateNewPasscodeFormErrorsCopyWithImpl<$Res>
    implements $CreateNewPasscodeFormErrorsCopyWith<$Res> {
  _$CreateNewPasscodeFormErrorsCopyWithImpl(this._self, this._then);

  final CreateNewPasscodeFormErrors _self;
  final $Res Function(CreateNewPasscodeFormErrors) _then;

/// Create a copy of CreateNewPasscodeFormErrors
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? passcode = freezed,Object? confirmPasscode = freezed,}) {
  return _then(_self.copyWith(
passcode: freezed == passcode ? _self.passcode : passcode // ignore: cast_nullable_to_non_nullable
as String?,confirmPasscode: freezed == confirmPasscode ? _self.confirmPasscode : confirmPasscode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateNewPasscodeFormErrors].
extension CreateNewPasscodeFormErrorsPatterns on CreateNewPasscodeFormErrors {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateNewPasscodeFormErrors value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateNewPasscodeFormErrors() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateNewPasscodeFormErrors value)  $default,){
final _that = this;
switch (_that) {
case _CreateNewPasscodeFormErrors():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateNewPasscodeFormErrors value)?  $default,){
final _that = this;
switch (_that) {
case _CreateNewPasscodeFormErrors() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? passcode,  String? confirmPasscode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateNewPasscodeFormErrors() when $default != null:
return $default(_that.passcode,_that.confirmPasscode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? passcode,  String? confirmPasscode)  $default,) {final _that = this;
switch (_that) {
case _CreateNewPasscodeFormErrors():
return $default(_that.passcode,_that.confirmPasscode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? passcode,  String? confirmPasscode)?  $default,) {final _that = this;
switch (_that) {
case _CreateNewPasscodeFormErrors() when $default != null:
return $default(_that.passcode,_that.confirmPasscode);case _:
  return null;

}
}

}

/// @nodoc


class _CreateNewPasscodeFormErrors extends CreateNewPasscodeFormErrors {
  const _CreateNewPasscodeFormErrors({this.passcode = null, this.confirmPasscode = null}): super._();
  

@override@JsonKey() final  String? passcode;
@override@JsonKey() final  String? confirmPasscode;

/// Create a copy of CreateNewPasscodeFormErrors
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateNewPasscodeFormErrorsCopyWith<_CreateNewPasscodeFormErrors> get copyWith => __$CreateNewPasscodeFormErrorsCopyWithImpl<_CreateNewPasscodeFormErrors>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateNewPasscodeFormErrors&&(identical(other.passcode, passcode) || other.passcode == passcode)&&(identical(other.confirmPasscode, confirmPasscode) || other.confirmPasscode == confirmPasscode));
}


@override
int get hashCode => Object.hash(runtimeType,passcode,confirmPasscode);

@override
String toString() {
  return 'CreateNewPasscodeFormErrors(passcode: $passcode, confirmPasscode: $confirmPasscode)';
}


}

/// @nodoc
abstract mixin class _$CreateNewPasscodeFormErrorsCopyWith<$Res> implements $CreateNewPasscodeFormErrorsCopyWith<$Res> {
  factory _$CreateNewPasscodeFormErrorsCopyWith(_CreateNewPasscodeFormErrors value, $Res Function(_CreateNewPasscodeFormErrors) _then) = __$CreateNewPasscodeFormErrorsCopyWithImpl;
@override @useResult
$Res call({
 String? passcode, String? confirmPasscode
});




}
/// @nodoc
class __$CreateNewPasscodeFormErrorsCopyWithImpl<$Res>
    implements _$CreateNewPasscodeFormErrorsCopyWith<$Res> {
  __$CreateNewPasscodeFormErrorsCopyWithImpl(this._self, this._then);

  final _CreateNewPasscodeFormErrors _self;
  final $Res Function(_CreateNewPasscodeFormErrors) _then;

/// Create a copy of CreateNewPasscodeFormErrors
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? passcode = freezed,Object? confirmPasscode = freezed,}) {
  return _then(_CreateNewPasscodeFormErrors(
passcode: freezed == passcode ? _self.passcode : passcode // ignore: cast_nullable_to_non_nullable
as String?,confirmPasscode: freezed == confirmPasscode ? _self.confirmPasscode : confirmPasscode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$CreateNewPasscodeState {

 CreateNewPasscodeStatus get status; String get passcode; String get confirmPasscode; CreateNewPasscodeFormErrors get formErrors;
/// Create a copy of CreateNewPasscodeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateNewPasscodeStateCopyWith<CreateNewPasscodeState> get copyWith => _$CreateNewPasscodeStateCopyWithImpl<CreateNewPasscodeState>(this as CreateNewPasscodeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateNewPasscodeState&&(identical(other.status, status) || other.status == status)&&(identical(other.passcode, passcode) || other.passcode == passcode)&&(identical(other.confirmPasscode, confirmPasscode) || other.confirmPasscode == confirmPasscode)&&(identical(other.formErrors, formErrors) || other.formErrors == formErrors));
}


@override
int get hashCode => Object.hash(runtimeType,status,passcode,confirmPasscode,formErrors);

@override
String toString() {
  return 'CreateNewPasscodeState(status: $status, passcode: $passcode, confirmPasscode: $confirmPasscode, formErrors: $formErrors)';
}


}

/// @nodoc
abstract mixin class $CreateNewPasscodeStateCopyWith<$Res>  {
  factory $CreateNewPasscodeStateCopyWith(CreateNewPasscodeState value, $Res Function(CreateNewPasscodeState) _then) = _$CreateNewPasscodeStateCopyWithImpl;
@useResult
$Res call({
 CreateNewPasscodeStatus status, String passcode, String confirmPasscode, CreateNewPasscodeFormErrors formErrors
});


$CreateNewPasscodeStatusCopyWith<$Res> get status;$CreateNewPasscodeFormErrorsCopyWith<$Res> get formErrors;

}
/// @nodoc
class _$CreateNewPasscodeStateCopyWithImpl<$Res>
    implements $CreateNewPasscodeStateCopyWith<$Res> {
  _$CreateNewPasscodeStateCopyWithImpl(this._self, this._then);

  final CreateNewPasscodeState _self;
  final $Res Function(CreateNewPasscodeState) _then;

/// Create a copy of CreateNewPasscodeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? passcode = null,Object? confirmPasscode = null,Object? formErrors = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateNewPasscodeStatus,passcode: null == passcode ? _self.passcode : passcode // ignore: cast_nullable_to_non_nullable
as String,confirmPasscode: null == confirmPasscode ? _self.confirmPasscode : confirmPasscode // ignore: cast_nullable_to_non_nullable
as String,formErrors: null == formErrors ? _self.formErrors : formErrors // ignore: cast_nullable_to_non_nullable
as CreateNewPasscodeFormErrors,
  ));
}
/// Create a copy of CreateNewPasscodeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateNewPasscodeStatusCopyWith<$Res> get status {
  
  return $CreateNewPasscodeStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of CreateNewPasscodeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateNewPasscodeFormErrorsCopyWith<$Res> get formErrors {
  
  return $CreateNewPasscodeFormErrorsCopyWith<$Res>(_self.formErrors, (value) {
    return _then(_self.copyWith(formErrors: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateNewPasscodeState].
extension CreateNewPasscodeStatePatterns on CreateNewPasscodeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateNewPasscodeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateNewPasscodeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateNewPasscodeState value)  $default,){
final _that = this;
switch (_that) {
case _CreateNewPasscodeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateNewPasscodeState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateNewPasscodeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CreateNewPasscodeStatus status,  String passcode,  String confirmPasscode,  CreateNewPasscodeFormErrors formErrors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateNewPasscodeState() when $default != null:
return $default(_that.status,_that.passcode,_that.confirmPasscode,_that.formErrors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CreateNewPasscodeStatus status,  String passcode,  String confirmPasscode,  CreateNewPasscodeFormErrors formErrors)  $default,) {final _that = this;
switch (_that) {
case _CreateNewPasscodeState():
return $default(_that.status,_that.passcode,_that.confirmPasscode,_that.formErrors);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CreateNewPasscodeStatus status,  String passcode,  String confirmPasscode,  CreateNewPasscodeFormErrors formErrors)?  $default,) {final _that = this;
switch (_that) {
case _CreateNewPasscodeState() when $default != null:
return $default(_that.status,_that.passcode,_that.confirmPasscode,_that.formErrors);case _:
  return null;

}
}

}

/// @nodoc


class _CreateNewPasscodeState extends CreateNewPasscodeState {
  const _CreateNewPasscodeState({this.status = const CreateNewPasscodeStatus.initial(), this.passcode = '', this.confirmPasscode = '', this.formErrors = const CreateNewPasscodeFormErrors()}): super._();
  

@override@JsonKey() final  CreateNewPasscodeStatus status;
@override@JsonKey() final  String passcode;
@override@JsonKey() final  String confirmPasscode;
@override@JsonKey() final  CreateNewPasscodeFormErrors formErrors;

/// Create a copy of CreateNewPasscodeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateNewPasscodeStateCopyWith<_CreateNewPasscodeState> get copyWith => __$CreateNewPasscodeStateCopyWithImpl<_CreateNewPasscodeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateNewPasscodeState&&(identical(other.status, status) || other.status == status)&&(identical(other.passcode, passcode) || other.passcode == passcode)&&(identical(other.confirmPasscode, confirmPasscode) || other.confirmPasscode == confirmPasscode)&&(identical(other.formErrors, formErrors) || other.formErrors == formErrors));
}


@override
int get hashCode => Object.hash(runtimeType,status,passcode,confirmPasscode,formErrors);

@override
String toString() {
  return 'CreateNewPasscodeState(status: $status, passcode: $passcode, confirmPasscode: $confirmPasscode, formErrors: $formErrors)';
}


}

/// @nodoc
abstract mixin class _$CreateNewPasscodeStateCopyWith<$Res> implements $CreateNewPasscodeStateCopyWith<$Res> {
  factory _$CreateNewPasscodeStateCopyWith(_CreateNewPasscodeState value, $Res Function(_CreateNewPasscodeState) _then) = __$CreateNewPasscodeStateCopyWithImpl;
@override @useResult
$Res call({
 CreateNewPasscodeStatus status, String passcode, String confirmPasscode, CreateNewPasscodeFormErrors formErrors
});


@override $CreateNewPasscodeStatusCopyWith<$Res> get status;@override $CreateNewPasscodeFormErrorsCopyWith<$Res> get formErrors;

}
/// @nodoc
class __$CreateNewPasscodeStateCopyWithImpl<$Res>
    implements _$CreateNewPasscodeStateCopyWith<$Res> {
  __$CreateNewPasscodeStateCopyWithImpl(this._self, this._then);

  final _CreateNewPasscodeState _self;
  final $Res Function(_CreateNewPasscodeState) _then;

/// Create a copy of CreateNewPasscodeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? passcode = null,Object? confirmPasscode = null,Object? formErrors = null,}) {
  return _then(_CreateNewPasscodeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateNewPasscodeStatus,passcode: null == passcode ? _self.passcode : passcode // ignore: cast_nullable_to_non_nullable
as String,confirmPasscode: null == confirmPasscode ? _self.confirmPasscode : confirmPasscode // ignore: cast_nullable_to_non_nullable
as String,formErrors: null == formErrors ? _self.formErrors : formErrors // ignore: cast_nullable_to_non_nullable
as CreateNewPasscodeFormErrors,
  ));
}

/// Create a copy of CreateNewPasscodeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateNewPasscodeStatusCopyWith<$Res> get status {
  
  return $CreateNewPasscodeStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of CreateNewPasscodeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateNewPasscodeFormErrorsCopyWith<$Res> get formErrors {
  
  return $CreateNewPasscodeFormErrorsCopyWith<$Res>(_self.formErrors, (value) {
    return _then(_self.copyWith(formErrors: value));
  });
}
}

// dart format on
