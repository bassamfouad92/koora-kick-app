// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_thread_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateThreadStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateThreadStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateThreadStatus()';
}


}

/// @nodoc
class $CreateThreadStatusCopyWith<$Res>  {
$CreateThreadStatusCopyWith(CreateThreadStatus _, $Res Function(CreateThreadStatus) __);
}


/// Adds pattern-matching-related methods to [CreateThreadStatus].
extension CreateThreadStatusPatterns on CreateThreadStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Submitting value)?  submitting,TResult Function( _Submitted value)?  submitted,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Submitting() when submitting != null:
return submitting(_that);case _Submitted() when submitted != null:
return submitted(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Submitting value)  submitting,required TResult Function( _Submitted value)  submitted,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Submitting():
return submitting(_that);case _Submitted():
return submitted(_that);case _Error():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Submitting value)?  submitting,TResult? Function( _Submitted value)?  submitted,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Submitting() when submitting != null:
return submitting(_that);case _Submitted() when submitted != null:
return submitted(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  submitting,TResult Function( ThreadModel thread)?  submitted,TResult Function( AppError error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Submitting() when submitting != null:
return submitting();case _Submitted() when submitted != null:
return submitted(_that.thread);case _Error() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  submitting,required TResult Function( ThreadModel thread)  submitted,required TResult Function( AppError error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Submitting():
return submitting();case _Submitted():
return submitted(_that.thread);case _Error():
return error(_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  submitting,TResult? Function( ThreadModel thread)?  submitted,TResult? Function( AppError error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Submitting() when submitting != null:
return submitting();case _Submitted() when submitted != null:
return submitted(_that.thread);case _Error() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CreateThreadStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateThreadStatus.initial()';
}


}




/// @nodoc


class _Submitting implements CreateThreadStatus {
  const _Submitting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submitting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateThreadStatus.submitting()';
}


}




/// @nodoc


class _Submitted implements CreateThreadStatus {
  const _Submitted(this.thread);
  

 final  ThreadModel thread;

/// Create a copy of CreateThreadStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmittedCopyWith<_Submitted> get copyWith => __$SubmittedCopyWithImpl<_Submitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submitted&&(identical(other.thread, thread) || other.thread == thread));
}


@override
int get hashCode => Object.hash(runtimeType,thread);

@override
String toString() {
  return 'CreateThreadStatus.submitted(thread: $thread)';
}


}

/// @nodoc
abstract mixin class _$SubmittedCopyWith<$Res> implements $CreateThreadStatusCopyWith<$Res> {
  factory _$SubmittedCopyWith(_Submitted value, $Res Function(_Submitted) _then) = __$SubmittedCopyWithImpl;
@useResult
$Res call({
 ThreadModel thread
});


$ThreadModelCopyWith<$Res> get thread;

}
/// @nodoc
class __$SubmittedCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(this._self, this._then);

  final _Submitted _self;
  final $Res Function(_Submitted) _then;

/// Create a copy of CreateThreadStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? thread = null,}) {
  return _then(_Submitted(
null == thread ? _self.thread : thread // ignore: cast_nullable_to_non_nullable
as ThreadModel,
  ));
}

/// Create a copy of CreateThreadStatus
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThreadModelCopyWith<$Res> get thread {
  
  return $ThreadModelCopyWith<$Res>(_self.thread, (value) {
    return _then(_self.copyWith(thread: value));
  });
}
}

/// @nodoc


class _Error implements CreateThreadStatus {
  const _Error(this.error);
  

 final  AppError error;

/// Create a copy of CreateThreadStatus
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
  return 'CreateThreadStatus.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $CreateThreadStatusCopyWith<$Res> {
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

/// Create a copy of CreateThreadStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of CreateThreadStatus
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
mixin _$CreateThreadFormErrors {

 String? get title; String? get description; String? get tags;
/// Create a copy of CreateThreadFormErrors
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateThreadFormErrorsCopyWith<CreateThreadFormErrors> get copyWith => _$CreateThreadFormErrorsCopyWithImpl<CreateThreadFormErrors>(this as CreateThreadFormErrors, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateThreadFormErrors&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.tags, tags) || other.tags == tags));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,tags);

@override
String toString() {
  return 'CreateThreadFormErrors(title: $title, description: $description, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $CreateThreadFormErrorsCopyWith<$Res>  {
  factory $CreateThreadFormErrorsCopyWith(CreateThreadFormErrors value, $Res Function(CreateThreadFormErrors) _then) = _$CreateThreadFormErrorsCopyWithImpl;
@useResult
$Res call({
 String? title, String? description, String? tags
});




}
/// @nodoc
class _$CreateThreadFormErrorsCopyWithImpl<$Res>
    implements $CreateThreadFormErrorsCopyWith<$Res> {
  _$CreateThreadFormErrorsCopyWithImpl(this._self, this._then);

  final CreateThreadFormErrors _self;
  final $Res Function(CreateThreadFormErrors) _then;

/// Create a copy of CreateThreadFormErrors
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? description = freezed,Object? tags = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateThreadFormErrors].
extension CreateThreadFormErrorsPatterns on CreateThreadFormErrors {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateThreadFormErrors value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateThreadFormErrors() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateThreadFormErrors value)  $default,){
final _that = this;
switch (_that) {
case _CreateThreadFormErrors():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateThreadFormErrors value)?  $default,){
final _that = this;
switch (_that) {
case _CreateThreadFormErrors() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  String? description,  String? tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateThreadFormErrors() when $default != null:
return $default(_that.title,_that.description,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  String? description,  String? tags)  $default,) {final _that = this;
switch (_that) {
case _CreateThreadFormErrors():
return $default(_that.title,_that.description,_that.tags);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  String? description,  String? tags)?  $default,) {final _that = this;
switch (_that) {
case _CreateThreadFormErrors() when $default != null:
return $default(_that.title,_that.description,_that.tags);case _:
  return null;

}
}

}

/// @nodoc


class _CreateThreadFormErrors implements CreateThreadFormErrors {
  const _CreateThreadFormErrors({this.title, this.description, this.tags});
  

@override final  String? title;
@override final  String? description;
@override final  String? tags;

/// Create a copy of CreateThreadFormErrors
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateThreadFormErrorsCopyWith<_CreateThreadFormErrors> get copyWith => __$CreateThreadFormErrorsCopyWithImpl<_CreateThreadFormErrors>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateThreadFormErrors&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.tags, tags) || other.tags == tags));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,tags);

@override
String toString() {
  return 'CreateThreadFormErrors(title: $title, description: $description, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$CreateThreadFormErrorsCopyWith<$Res> implements $CreateThreadFormErrorsCopyWith<$Res> {
  factory _$CreateThreadFormErrorsCopyWith(_CreateThreadFormErrors value, $Res Function(_CreateThreadFormErrors) _then) = __$CreateThreadFormErrorsCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? description, String? tags
});




}
/// @nodoc
class __$CreateThreadFormErrorsCopyWithImpl<$Res>
    implements _$CreateThreadFormErrorsCopyWith<$Res> {
  __$CreateThreadFormErrorsCopyWithImpl(this._self, this._then);

  final _CreateThreadFormErrors _self;
  final $Res Function(_CreateThreadFormErrors) _then;

/// Create a copy of CreateThreadFormErrors
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? description = freezed,Object? tags = freezed,}) {
  return _then(_CreateThreadFormErrors(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$CreateThreadState {

 CreateThreadStatus get status; String get title; String get description; List<String> get tags; List<HashtagModel> get popularTags; bool get isTagsLoading; CreateThreadFormErrors get formErrors;
/// Create a copy of CreateThreadState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateThreadStateCopyWith<CreateThreadState> get copyWith => _$CreateThreadStateCopyWithImpl<CreateThreadState>(this as CreateThreadState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateThreadState&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.popularTags, popularTags)&&(identical(other.isTagsLoading, isTagsLoading) || other.isTagsLoading == isTagsLoading)&&(identical(other.formErrors, formErrors) || other.formErrors == formErrors));
}


@override
int get hashCode => Object.hash(runtimeType,status,title,description,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(popularTags),isTagsLoading,formErrors);

@override
String toString() {
  return 'CreateThreadState(status: $status, title: $title, description: $description, tags: $tags, popularTags: $popularTags, isTagsLoading: $isTagsLoading, formErrors: $formErrors)';
}


}

/// @nodoc
abstract mixin class $CreateThreadStateCopyWith<$Res>  {
  factory $CreateThreadStateCopyWith(CreateThreadState value, $Res Function(CreateThreadState) _then) = _$CreateThreadStateCopyWithImpl;
@useResult
$Res call({
 CreateThreadStatus status, String title, String description, List<String> tags, List<HashtagModel> popularTags, bool isTagsLoading, CreateThreadFormErrors formErrors
});


$CreateThreadStatusCopyWith<$Res> get status;$CreateThreadFormErrorsCopyWith<$Res> get formErrors;

}
/// @nodoc
class _$CreateThreadStateCopyWithImpl<$Res>
    implements $CreateThreadStateCopyWith<$Res> {
  _$CreateThreadStateCopyWithImpl(this._self, this._then);

  final CreateThreadState _self;
  final $Res Function(CreateThreadState) _then;

/// Create a copy of CreateThreadState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? title = null,Object? description = null,Object? tags = null,Object? popularTags = null,Object? isTagsLoading = null,Object? formErrors = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateThreadStatus,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,popularTags: null == popularTags ? _self.popularTags : popularTags // ignore: cast_nullable_to_non_nullable
as List<HashtagModel>,isTagsLoading: null == isTagsLoading ? _self.isTagsLoading : isTagsLoading // ignore: cast_nullable_to_non_nullable
as bool,formErrors: null == formErrors ? _self.formErrors : formErrors // ignore: cast_nullable_to_non_nullable
as CreateThreadFormErrors,
  ));
}
/// Create a copy of CreateThreadState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateThreadStatusCopyWith<$Res> get status {
  
  return $CreateThreadStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of CreateThreadState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateThreadFormErrorsCopyWith<$Res> get formErrors {
  
  return $CreateThreadFormErrorsCopyWith<$Res>(_self.formErrors, (value) {
    return _then(_self.copyWith(formErrors: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateThreadState].
extension CreateThreadStatePatterns on CreateThreadState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateThreadState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateThreadState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateThreadState value)  $default,){
final _that = this;
switch (_that) {
case _CreateThreadState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateThreadState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateThreadState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CreateThreadStatus status,  String title,  String description,  List<String> tags,  List<HashtagModel> popularTags,  bool isTagsLoading,  CreateThreadFormErrors formErrors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateThreadState() when $default != null:
return $default(_that.status,_that.title,_that.description,_that.tags,_that.popularTags,_that.isTagsLoading,_that.formErrors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CreateThreadStatus status,  String title,  String description,  List<String> tags,  List<HashtagModel> popularTags,  bool isTagsLoading,  CreateThreadFormErrors formErrors)  $default,) {final _that = this;
switch (_that) {
case _CreateThreadState():
return $default(_that.status,_that.title,_that.description,_that.tags,_that.popularTags,_that.isTagsLoading,_that.formErrors);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CreateThreadStatus status,  String title,  String description,  List<String> tags,  List<HashtagModel> popularTags,  bool isTagsLoading,  CreateThreadFormErrors formErrors)?  $default,) {final _that = this;
switch (_that) {
case _CreateThreadState() when $default != null:
return $default(_that.status,_that.title,_that.description,_that.tags,_that.popularTags,_that.isTagsLoading,_that.formErrors);case _:
  return null;

}
}

}

/// @nodoc


class _CreateThreadState implements CreateThreadState {
  const _CreateThreadState({this.status = const CreateThreadStatus.initial(), this.title = '', this.description = '', final  List<String> tags = const [], final  List<HashtagModel> popularTags = const [], this.isTagsLoading = false, this.formErrors = const CreateThreadFormErrors()}): _tags = tags,_popularTags = popularTags;
  

@override@JsonKey() final  CreateThreadStatus status;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  List<HashtagModel> _popularTags;
@override@JsonKey() List<HashtagModel> get popularTags {
  if (_popularTags is EqualUnmodifiableListView) return _popularTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popularTags);
}

@override@JsonKey() final  bool isTagsLoading;
@override@JsonKey() final  CreateThreadFormErrors formErrors;

/// Create a copy of CreateThreadState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateThreadStateCopyWith<_CreateThreadState> get copyWith => __$CreateThreadStateCopyWithImpl<_CreateThreadState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateThreadState&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._popularTags, _popularTags)&&(identical(other.isTagsLoading, isTagsLoading) || other.isTagsLoading == isTagsLoading)&&(identical(other.formErrors, formErrors) || other.formErrors == formErrors));
}


@override
int get hashCode => Object.hash(runtimeType,status,title,description,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_popularTags),isTagsLoading,formErrors);

@override
String toString() {
  return 'CreateThreadState(status: $status, title: $title, description: $description, tags: $tags, popularTags: $popularTags, isTagsLoading: $isTagsLoading, formErrors: $formErrors)';
}


}

/// @nodoc
abstract mixin class _$CreateThreadStateCopyWith<$Res> implements $CreateThreadStateCopyWith<$Res> {
  factory _$CreateThreadStateCopyWith(_CreateThreadState value, $Res Function(_CreateThreadState) _then) = __$CreateThreadStateCopyWithImpl;
@override @useResult
$Res call({
 CreateThreadStatus status, String title, String description, List<String> tags, List<HashtagModel> popularTags, bool isTagsLoading, CreateThreadFormErrors formErrors
});


@override $CreateThreadStatusCopyWith<$Res> get status;@override $CreateThreadFormErrorsCopyWith<$Res> get formErrors;

}
/// @nodoc
class __$CreateThreadStateCopyWithImpl<$Res>
    implements _$CreateThreadStateCopyWith<$Res> {
  __$CreateThreadStateCopyWithImpl(this._self, this._then);

  final _CreateThreadState _self;
  final $Res Function(_CreateThreadState) _then;

/// Create a copy of CreateThreadState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? title = null,Object? description = null,Object? tags = null,Object? popularTags = null,Object? isTagsLoading = null,Object? formErrors = null,}) {
  return _then(_CreateThreadState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateThreadStatus,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,popularTags: null == popularTags ? _self._popularTags : popularTags // ignore: cast_nullable_to_non_nullable
as List<HashtagModel>,isTagsLoading: null == isTagsLoading ? _self.isTagsLoading : isTagsLoading // ignore: cast_nullable_to_non_nullable
as bool,formErrors: null == formErrors ? _self.formErrors : formErrors // ignore: cast_nullable_to_non_nullable
as CreateThreadFormErrors,
  ));
}

/// Create a copy of CreateThreadState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateThreadStatusCopyWith<$Res> get status {
  
  return $CreateThreadStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of CreateThreadState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateThreadFormErrorsCopyWith<$Res> get formErrors {
  
  return $CreateThreadFormErrorsCopyWith<$Res>(_self.formErrors, (value) {
    return _then(_self.copyWith(formErrors: value));
  });
}
}

// dart format on
