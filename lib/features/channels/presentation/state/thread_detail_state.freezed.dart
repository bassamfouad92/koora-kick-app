// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'thread_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThreadDetailStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThreadDetailStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThreadDetailStatus()';
}


}

/// @nodoc
class $ThreadDetailStatusCopyWith<$Res>  {
$ThreadDetailStatusCopyWith(ThreadDetailStatus _, $Res Function(ThreadDetailStatus) __);
}


/// Adds pattern-matching-related methods to [ThreadDetailStatus].
extension ThreadDetailStatusPatterns on ThreadDetailStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  loaded,TResult Function( AppError error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded();case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  loaded,required TResult Function( AppError error)  error,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Loaded():
return loaded();case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  loaded,TResult? Function( AppError error)?  error,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded();case _Error() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements ThreadDetailStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThreadDetailStatus.loading()';
}


}




/// @nodoc


class _Loaded implements ThreadDetailStatus {
  const _Loaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThreadDetailStatus.loaded()';
}


}




/// @nodoc


class _Error implements ThreadDetailStatus {
  const _Error(this.error);
  

 final  AppError error;

/// Create a copy of ThreadDetailStatus
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
  return 'ThreadDetailStatus.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ThreadDetailStatusCopyWith<$Res> {
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

/// Create a copy of ThreadDetailStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of ThreadDetailStatus
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
mixin _$ThreadDetailState {

 ThreadDetailStatus get status; ThreadModel? get thread; List<ReplyModel> get replies; bool get isRepliesLoading; bool get isSubmittingReply; bool get isSaved; bool get isMuted;
/// Create a copy of ThreadDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThreadDetailStateCopyWith<ThreadDetailState> get copyWith => _$ThreadDetailStateCopyWithImpl<ThreadDetailState>(this as ThreadDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThreadDetailState&&(identical(other.status, status) || other.status == status)&&(identical(other.thread, thread) || other.thread == thread)&&const DeepCollectionEquality().equals(other.replies, replies)&&(identical(other.isRepliesLoading, isRepliesLoading) || other.isRepliesLoading == isRepliesLoading)&&(identical(other.isSubmittingReply, isSubmittingReply) || other.isSubmittingReply == isSubmittingReply)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.isMuted, isMuted) || other.isMuted == isMuted));
}


@override
int get hashCode => Object.hash(runtimeType,status,thread,const DeepCollectionEquality().hash(replies),isRepliesLoading,isSubmittingReply,isSaved,isMuted);

@override
String toString() {
  return 'ThreadDetailState(status: $status, thread: $thread, replies: $replies, isRepliesLoading: $isRepliesLoading, isSubmittingReply: $isSubmittingReply, isSaved: $isSaved, isMuted: $isMuted)';
}


}

/// @nodoc
abstract mixin class $ThreadDetailStateCopyWith<$Res>  {
  factory $ThreadDetailStateCopyWith(ThreadDetailState value, $Res Function(ThreadDetailState) _then) = _$ThreadDetailStateCopyWithImpl;
@useResult
$Res call({
 ThreadDetailStatus status, ThreadModel? thread, List<ReplyModel> replies, bool isRepliesLoading, bool isSubmittingReply, bool isSaved, bool isMuted
});


$ThreadDetailStatusCopyWith<$Res> get status;$ThreadModelCopyWith<$Res>? get thread;

}
/// @nodoc
class _$ThreadDetailStateCopyWithImpl<$Res>
    implements $ThreadDetailStateCopyWith<$Res> {
  _$ThreadDetailStateCopyWithImpl(this._self, this._then);

  final ThreadDetailState _self;
  final $Res Function(ThreadDetailState) _then;

/// Create a copy of ThreadDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? thread = freezed,Object? replies = null,Object? isRepliesLoading = null,Object? isSubmittingReply = null,Object? isSaved = null,Object? isMuted = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ThreadDetailStatus,thread: freezed == thread ? _self.thread : thread // ignore: cast_nullable_to_non_nullable
as ThreadModel?,replies: null == replies ? _self.replies : replies // ignore: cast_nullable_to_non_nullable
as List<ReplyModel>,isRepliesLoading: null == isRepliesLoading ? _self.isRepliesLoading : isRepliesLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmittingReply: null == isSubmittingReply ? _self.isSubmittingReply : isSubmittingReply // ignore: cast_nullable_to_non_nullable
as bool,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,isMuted: null == isMuted ? _self.isMuted : isMuted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ThreadDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThreadDetailStatusCopyWith<$Res> get status {
  
  return $ThreadDetailStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ThreadDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThreadModelCopyWith<$Res>? get thread {
    if (_self.thread == null) {
    return null;
  }

  return $ThreadModelCopyWith<$Res>(_self.thread!, (value) {
    return _then(_self.copyWith(thread: value));
  });
}
}


/// Adds pattern-matching-related methods to [ThreadDetailState].
extension ThreadDetailStatePatterns on ThreadDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThreadDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThreadDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThreadDetailState value)  $default,){
final _that = this;
switch (_that) {
case _ThreadDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThreadDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _ThreadDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ThreadDetailStatus status,  ThreadModel? thread,  List<ReplyModel> replies,  bool isRepliesLoading,  bool isSubmittingReply,  bool isSaved,  bool isMuted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThreadDetailState() when $default != null:
return $default(_that.status,_that.thread,_that.replies,_that.isRepliesLoading,_that.isSubmittingReply,_that.isSaved,_that.isMuted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ThreadDetailStatus status,  ThreadModel? thread,  List<ReplyModel> replies,  bool isRepliesLoading,  bool isSubmittingReply,  bool isSaved,  bool isMuted)  $default,) {final _that = this;
switch (_that) {
case _ThreadDetailState():
return $default(_that.status,_that.thread,_that.replies,_that.isRepliesLoading,_that.isSubmittingReply,_that.isSaved,_that.isMuted);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ThreadDetailStatus status,  ThreadModel? thread,  List<ReplyModel> replies,  bool isRepliesLoading,  bool isSubmittingReply,  bool isSaved,  bool isMuted)?  $default,) {final _that = this;
switch (_that) {
case _ThreadDetailState() when $default != null:
return $default(_that.status,_that.thread,_that.replies,_that.isRepliesLoading,_that.isSubmittingReply,_that.isSaved,_that.isMuted);case _:
  return null;

}
}

}

/// @nodoc


class _ThreadDetailState implements ThreadDetailState {
  const _ThreadDetailState({this.status = const ThreadDetailStatus.loading(), this.thread, final  List<ReplyModel> replies = const [], this.isRepliesLoading = true, this.isSubmittingReply = false, this.isSaved = false, this.isMuted = false}): _replies = replies;
  

@override@JsonKey() final  ThreadDetailStatus status;
@override final  ThreadModel? thread;
 final  List<ReplyModel> _replies;
@override@JsonKey() List<ReplyModel> get replies {
  if (_replies is EqualUnmodifiableListView) return _replies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_replies);
}

@override@JsonKey() final  bool isRepliesLoading;
@override@JsonKey() final  bool isSubmittingReply;
@override@JsonKey() final  bool isSaved;
@override@JsonKey() final  bool isMuted;

/// Create a copy of ThreadDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThreadDetailStateCopyWith<_ThreadDetailState> get copyWith => __$ThreadDetailStateCopyWithImpl<_ThreadDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThreadDetailState&&(identical(other.status, status) || other.status == status)&&(identical(other.thread, thread) || other.thread == thread)&&const DeepCollectionEquality().equals(other._replies, _replies)&&(identical(other.isRepliesLoading, isRepliesLoading) || other.isRepliesLoading == isRepliesLoading)&&(identical(other.isSubmittingReply, isSubmittingReply) || other.isSubmittingReply == isSubmittingReply)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.isMuted, isMuted) || other.isMuted == isMuted));
}


@override
int get hashCode => Object.hash(runtimeType,status,thread,const DeepCollectionEquality().hash(_replies),isRepliesLoading,isSubmittingReply,isSaved,isMuted);

@override
String toString() {
  return 'ThreadDetailState(status: $status, thread: $thread, replies: $replies, isRepliesLoading: $isRepliesLoading, isSubmittingReply: $isSubmittingReply, isSaved: $isSaved, isMuted: $isMuted)';
}


}

/// @nodoc
abstract mixin class _$ThreadDetailStateCopyWith<$Res> implements $ThreadDetailStateCopyWith<$Res> {
  factory _$ThreadDetailStateCopyWith(_ThreadDetailState value, $Res Function(_ThreadDetailState) _then) = __$ThreadDetailStateCopyWithImpl;
@override @useResult
$Res call({
 ThreadDetailStatus status, ThreadModel? thread, List<ReplyModel> replies, bool isRepliesLoading, bool isSubmittingReply, bool isSaved, bool isMuted
});


@override $ThreadDetailStatusCopyWith<$Res> get status;@override $ThreadModelCopyWith<$Res>? get thread;

}
/// @nodoc
class __$ThreadDetailStateCopyWithImpl<$Res>
    implements _$ThreadDetailStateCopyWith<$Res> {
  __$ThreadDetailStateCopyWithImpl(this._self, this._then);

  final _ThreadDetailState _self;
  final $Res Function(_ThreadDetailState) _then;

/// Create a copy of ThreadDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? thread = freezed,Object? replies = null,Object? isRepliesLoading = null,Object? isSubmittingReply = null,Object? isSaved = null,Object? isMuted = null,}) {
  return _then(_ThreadDetailState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ThreadDetailStatus,thread: freezed == thread ? _self.thread : thread // ignore: cast_nullable_to_non_nullable
as ThreadModel?,replies: null == replies ? _self._replies : replies // ignore: cast_nullable_to_non_nullable
as List<ReplyModel>,isRepliesLoading: null == isRepliesLoading ? _self.isRepliesLoading : isRepliesLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmittingReply: null == isSubmittingReply ? _self.isSubmittingReply : isSubmittingReply // ignore: cast_nullable_to_non_nullable
as bool,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,isMuted: null == isMuted ? _self.isMuted : isMuted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ThreadDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThreadDetailStatusCopyWith<$Res> get status {
  
  return $ThreadDetailStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ThreadDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThreadModelCopyWith<$Res>? get thread {
    if (_self.thread == null) {
    return null;
  }

  return $ThreadModelCopyWith<$Res>(_self.thread!, (value) {
    return _then(_self.copyWith(thread: value));
  });
}
}

// dart format on
