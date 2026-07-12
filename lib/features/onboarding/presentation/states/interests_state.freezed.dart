// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interests_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InterestsStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterestsStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InterestsStatus()';
}


}

/// @nodoc
class $InterestsStatusCopyWith<$Res>  {
$InterestsStatusCopyWith(InterestsStatus _, $Res Function(InterestsStatus) __);
}


/// Adds pattern-matching-related methods to [InterestsStatus].
extension InterestsStatusPatterns on InterestsStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,TResult Function( _Submitting value)?  submitting,TResult Function( _Submitted value)?  submitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _Submitting() when submitting != null:
return submitting(_that);case _Submitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,required TResult Function( _Submitting value)  submitting,required TResult Function( _Submitted value)  submitted,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
return error(_that);case _Submitting():
return submitting(_that);case _Submitted():
return submitted(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,TResult? Function( _Submitting value)?  submitting,TResult? Function( _Submitted value)?  submitted,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _Submitting() when submitting != null:
return submitting(_that);case _Submitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  loaded,TResult Function( AppError error)?  error,TResult Function()?  submitting,TResult Function()?  submitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded();case _Error() when error != null:
return error(_that.error);case _Submitting() when submitting != null:
return submitting();case _Submitted() when submitted != null:
return submitted();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  loaded,required TResult Function( AppError error)  error,required TResult Function()  submitting,required TResult Function()  submitted,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Loaded():
return loaded();case _Error():
return error(_that.error);case _Submitting():
return submitting();case _Submitted():
return submitted();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  loaded,TResult? Function( AppError error)?  error,TResult? Function()?  submitting,TResult? Function()?  submitted,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded();case _Error() when error != null:
return error(_that.error);case _Submitting() when submitting != null:
return submitting();case _Submitted() when submitted != null:
return submitted();case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements InterestsStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InterestsStatus.loading()';
}


}




/// @nodoc


class _Loaded implements InterestsStatus {
  const _Loaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InterestsStatus.loaded()';
}


}




/// @nodoc


class _Error implements InterestsStatus {
  const _Error(this.error);
  

 final  AppError error;

/// Create a copy of InterestsStatus
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
  return 'InterestsStatus.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $InterestsStatusCopyWith<$Res> {
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

/// Create a copy of InterestsStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of InterestsStatus
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


class _Submitting implements InterestsStatus {
  const _Submitting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submitting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InterestsStatus.submitting()';
}


}




/// @nodoc


class _Submitted implements InterestsStatus {
  const _Submitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InterestsStatus.submitted()';
}


}




/// @nodoc
mixin _$InterestsState {

 InterestsStatus get status; List<ChannelModel> get clubs; Set<String> get selectedClubIds; Set<String> get selectedTopics;
/// Create a copy of InterestsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InterestsStateCopyWith<InterestsState> get copyWith => _$InterestsStateCopyWithImpl<InterestsState>(this as InterestsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterestsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.clubs, clubs)&&const DeepCollectionEquality().equals(other.selectedClubIds, selectedClubIds)&&const DeepCollectionEquality().equals(other.selectedTopics, selectedTopics));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(clubs),const DeepCollectionEquality().hash(selectedClubIds),const DeepCollectionEquality().hash(selectedTopics));

@override
String toString() {
  return 'InterestsState(status: $status, clubs: $clubs, selectedClubIds: $selectedClubIds, selectedTopics: $selectedTopics)';
}


}

/// @nodoc
abstract mixin class $InterestsStateCopyWith<$Res>  {
  factory $InterestsStateCopyWith(InterestsState value, $Res Function(InterestsState) _then) = _$InterestsStateCopyWithImpl;
@useResult
$Res call({
 InterestsStatus status, List<ChannelModel> clubs, Set<String> selectedClubIds, Set<String> selectedTopics
});


$InterestsStatusCopyWith<$Res> get status;

}
/// @nodoc
class _$InterestsStateCopyWithImpl<$Res>
    implements $InterestsStateCopyWith<$Res> {
  _$InterestsStateCopyWithImpl(this._self, this._then);

  final InterestsState _self;
  final $Res Function(InterestsState) _then;

/// Create a copy of InterestsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? clubs = null,Object? selectedClubIds = null,Object? selectedTopics = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InterestsStatus,clubs: null == clubs ? _self.clubs : clubs // ignore: cast_nullable_to_non_nullable
as List<ChannelModel>,selectedClubIds: null == selectedClubIds ? _self.selectedClubIds : selectedClubIds // ignore: cast_nullable_to_non_nullable
as Set<String>,selectedTopics: null == selectedTopics ? _self.selectedTopics : selectedTopics // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}
/// Create a copy of InterestsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InterestsStatusCopyWith<$Res> get status {
  
  return $InterestsStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [InterestsState].
extension InterestsStatePatterns on InterestsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InterestsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InterestsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InterestsState value)  $default,){
final _that = this;
switch (_that) {
case _InterestsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InterestsState value)?  $default,){
final _that = this;
switch (_that) {
case _InterestsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( InterestsStatus status,  List<ChannelModel> clubs,  Set<String> selectedClubIds,  Set<String> selectedTopics)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InterestsState() when $default != null:
return $default(_that.status,_that.clubs,_that.selectedClubIds,_that.selectedTopics);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( InterestsStatus status,  List<ChannelModel> clubs,  Set<String> selectedClubIds,  Set<String> selectedTopics)  $default,) {final _that = this;
switch (_that) {
case _InterestsState():
return $default(_that.status,_that.clubs,_that.selectedClubIds,_that.selectedTopics);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( InterestsStatus status,  List<ChannelModel> clubs,  Set<String> selectedClubIds,  Set<String> selectedTopics)?  $default,) {final _that = this;
switch (_that) {
case _InterestsState() when $default != null:
return $default(_that.status,_that.clubs,_that.selectedClubIds,_that.selectedTopics);case _:
  return null;

}
}

}

/// @nodoc


class _InterestsState extends InterestsState {
  const _InterestsState({this.status = const InterestsStatus.loading(), final  List<ChannelModel> clubs = const [], final  Set<String> selectedClubIds = const {}, final  Set<String> selectedTopics = const {}}): _clubs = clubs,_selectedClubIds = selectedClubIds,_selectedTopics = selectedTopics,super._();
  

@override@JsonKey() final  InterestsStatus status;
 final  List<ChannelModel> _clubs;
@override@JsonKey() List<ChannelModel> get clubs {
  if (_clubs is EqualUnmodifiableListView) return _clubs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_clubs);
}

 final  Set<String> _selectedClubIds;
@override@JsonKey() Set<String> get selectedClubIds {
  if (_selectedClubIds is EqualUnmodifiableSetView) return _selectedClubIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_selectedClubIds);
}

 final  Set<String> _selectedTopics;
@override@JsonKey() Set<String> get selectedTopics {
  if (_selectedTopics is EqualUnmodifiableSetView) return _selectedTopics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_selectedTopics);
}


/// Create a copy of InterestsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InterestsStateCopyWith<_InterestsState> get copyWith => __$InterestsStateCopyWithImpl<_InterestsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InterestsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._clubs, _clubs)&&const DeepCollectionEquality().equals(other._selectedClubIds, _selectedClubIds)&&const DeepCollectionEquality().equals(other._selectedTopics, _selectedTopics));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_clubs),const DeepCollectionEquality().hash(_selectedClubIds),const DeepCollectionEquality().hash(_selectedTopics));

@override
String toString() {
  return 'InterestsState(status: $status, clubs: $clubs, selectedClubIds: $selectedClubIds, selectedTopics: $selectedTopics)';
}


}

/// @nodoc
abstract mixin class _$InterestsStateCopyWith<$Res> implements $InterestsStateCopyWith<$Res> {
  factory _$InterestsStateCopyWith(_InterestsState value, $Res Function(_InterestsState) _then) = __$InterestsStateCopyWithImpl;
@override @useResult
$Res call({
 InterestsStatus status, List<ChannelModel> clubs, Set<String> selectedClubIds, Set<String> selectedTopics
});


@override $InterestsStatusCopyWith<$Res> get status;

}
/// @nodoc
class __$InterestsStateCopyWithImpl<$Res>
    implements _$InterestsStateCopyWith<$Res> {
  __$InterestsStateCopyWithImpl(this._self, this._then);

  final _InterestsState _self;
  final $Res Function(_InterestsState) _then;

/// Create a copy of InterestsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? clubs = null,Object? selectedClubIds = null,Object? selectedTopics = null,}) {
  return _then(_InterestsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InterestsStatus,clubs: null == clubs ? _self._clubs : clubs // ignore: cast_nullable_to_non_nullable
as List<ChannelModel>,selectedClubIds: null == selectedClubIds ? _self._selectedClubIds : selectedClubIds // ignore: cast_nullable_to_non_nullable
as Set<String>,selectedTopics: null == selectedTopics ? _self._selectedTopics : selectedTopics // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}

/// Create a copy of InterestsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InterestsStatusCopyWith<$Res> get status {
  
  return $InterestsStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

// dart format on
