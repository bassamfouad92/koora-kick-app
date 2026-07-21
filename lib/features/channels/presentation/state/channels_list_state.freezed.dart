// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channels_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChannelsListStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChannelsListStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChannelsListStatus()';
}


}

/// @nodoc
class $ChannelsListStatusCopyWith<$Res>  {
$ChannelsListStatusCopyWith(ChannelsListStatus _, $Res Function(ChannelsListStatus) __);
}


/// Adds pattern-matching-related methods to [ChannelsListStatus].
extension ChannelsListStatusPatterns on ChannelsListStatus {
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


class _Loading implements ChannelsListStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChannelsListStatus.loading()';
}


}




/// @nodoc


class _Loaded implements ChannelsListStatus {
  const _Loaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChannelsListStatus.loaded()';
}


}




/// @nodoc


class _Error implements ChannelsListStatus {
  const _Error(this.error);
  

 final  AppError error;

/// Create a copy of ChannelsListStatus
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
  return 'ChannelsListStatus.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ChannelsListStatusCopyWith<$Res> {
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

/// Create a copy of ChannelsListStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of ChannelsListStatus
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
mixin _$ChannelsListState {

 ChannelsListStatus get status; List<ChannelModel> get channels; ChannelCategory get category; String get searchQuery; ChannelSort get sort; Set<String> get joinBusyIds;
/// Create a copy of ChannelsListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChannelsListStateCopyWith<ChannelsListState> get copyWith => _$ChannelsListStateCopyWithImpl<ChannelsListState>(this as ChannelsListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChannelsListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.channels, channels)&&(identical(other.category, category) || other.category == category)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.sort, sort) || other.sort == sort)&&const DeepCollectionEquality().equals(other.joinBusyIds, joinBusyIds));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(channels),category,searchQuery,sort,const DeepCollectionEquality().hash(joinBusyIds));

@override
String toString() {
  return 'ChannelsListState(status: $status, channels: $channels, category: $category, searchQuery: $searchQuery, sort: $sort, joinBusyIds: $joinBusyIds)';
}


}

/// @nodoc
abstract mixin class $ChannelsListStateCopyWith<$Res>  {
  factory $ChannelsListStateCopyWith(ChannelsListState value, $Res Function(ChannelsListState) _then) = _$ChannelsListStateCopyWithImpl;
@useResult
$Res call({
 ChannelsListStatus status, List<ChannelModel> channels, ChannelCategory category, String searchQuery, ChannelSort sort, Set<String> joinBusyIds
});


$ChannelsListStatusCopyWith<$Res> get status;

}
/// @nodoc
class _$ChannelsListStateCopyWithImpl<$Res>
    implements $ChannelsListStateCopyWith<$Res> {
  _$ChannelsListStateCopyWithImpl(this._self, this._then);

  final ChannelsListState _self;
  final $Res Function(ChannelsListState) _then;

/// Create a copy of ChannelsListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? channels = null,Object? category = null,Object? searchQuery = null,Object? sort = null,Object? joinBusyIds = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChannelsListStatus,channels: null == channels ? _self.channels : channels // ignore: cast_nullable_to_non_nullable
as List<ChannelModel>,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ChannelCategory,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as ChannelSort,joinBusyIds: null == joinBusyIds ? _self.joinBusyIds : joinBusyIds // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}
/// Create a copy of ChannelsListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChannelsListStatusCopyWith<$Res> get status {
  
  return $ChannelsListStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChannelsListState].
extension ChannelsListStatePatterns on ChannelsListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChannelsListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChannelsListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChannelsListState value)  $default,){
final _that = this;
switch (_that) {
case _ChannelsListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChannelsListState value)?  $default,){
final _that = this;
switch (_that) {
case _ChannelsListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ChannelsListStatus status,  List<ChannelModel> channels,  ChannelCategory category,  String searchQuery,  ChannelSort sort,  Set<String> joinBusyIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChannelsListState() when $default != null:
return $default(_that.status,_that.channels,_that.category,_that.searchQuery,_that.sort,_that.joinBusyIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ChannelsListStatus status,  List<ChannelModel> channels,  ChannelCategory category,  String searchQuery,  ChannelSort sort,  Set<String> joinBusyIds)  $default,) {final _that = this;
switch (_that) {
case _ChannelsListState():
return $default(_that.status,_that.channels,_that.category,_that.searchQuery,_that.sort,_that.joinBusyIds);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ChannelsListStatus status,  List<ChannelModel> channels,  ChannelCategory category,  String searchQuery,  ChannelSort sort,  Set<String> joinBusyIds)?  $default,) {final _that = this;
switch (_that) {
case _ChannelsListState() when $default != null:
return $default(_that.status,_that.channels,_that.category,_that.searchQuery,_that.sort,_that.joinBusyIds);case _:
  return null;

}
}

}

/// @nodoc


class _ChannelsListState extends ChannelsListState {
  const _ChannelsListState({this.status = const ChannelsListStatus.loading(), final  List<ChannelModel> channels = const [], this.category = ChannelCategory.all, this.searchQuery = '', this.sort = ChannelSort.popular, final  Set<String> joinBusyIds = const <String>{}}): _channels = channels,_joinBusyIds = joinBusyIds,super._();
  

@override@JsonKey() final  ChannelsListStatus status;
 final  List<ChannelModel> _channels;
@override@JsonKey() List<ChannelModel> get channels {
  if (_channels is EqualUnmodifiableListView) return _channels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_channels);
}

@override@JsonKey() final  ChannelCategory category;
@override@JsonKey() final  String searchQuery;
@override@JsonKey() final  ChannelSort sort;
 final  Set<String> _joinBusyIds;
@override@JsonKey() Set<String> get joinBusyIds {
  if (_joinBusyIds is EqualUnmodifiableSetView) return _joinBusyIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_joinBusyIds);
}


/// Create a copy of ChannelsListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChannelsListStateCopyWith<_ChannelsListState> get copyWith => __$ChannelsListStateCopyWithImpl<_ChannelsListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChannelsListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._channels, _channels)&&(identical(other.category, category) || other.category == category)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.sort, sort) || other.sort == sort)&&const DeepCollectionEquality().equals(other._joinBusyIds, _joinBusyIds));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_channels),category,searchQuery,sort,const DeepCollectionEquality().hash(_joinBusyIds));

@override
String toString() {
  return 'ChannelsListState(status: $status, channels: $channels, category: $category, searchQuery: $searchQuery, sort: $sort, joinBusyIds: $joinBusyIds)';
}


}

/// @nodoc
abstract mixin class _$ChannelsListStateCopyWith<$Res> implements $ChannelsListStateCopyWith<$Res> {
  factory _$ChannelsListStateCopyWith(_ChannelsListState value, $Res Function(_ChannelsListState) _then) = __$ChannelsListStateCopyWithImpl;
@override @useResult
$Res call({
 ChannelsListStatus status, List<ChannelModel> channels, ChannelCategory category, String searchQuery, ChannelSort sort, Set<String> joinBusyIds
});


@override $ChannelsListStatusCopyWith<$Res> get status;

}
/// @nodoc
class __$ChannelsListStateCopyWithImpl<$Res>
    implements _$ChannelsListStateCopyWith<$Res> {
  __$ChannelsListStateCopyWithImpl(this._self, this._then);

  final _ChannelsListState _self;
  final $Res Function(_ChannelsListState) _then;

/// Create a copy of ChannelsListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? channels = null,Object? category = null,Object? searchQuery = null,Object? sort = null,Object? joinBusyIds = null,}) {
  return _then(_ChannelsListState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChannelsListStatus,channels: null == channels ? _self._channels : channels // ignore: cast_nullable_to_non_nullable
as List<ChannelModel>,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ChannelCategory,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as ChannelSort,joinBusyIds: null == joinBusyIds ? _self._joinBusyIds : joinBusyIds // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}

/// Create a copy of ChannelsListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChannelsListStatusCopyWith<$Res> get status {
  
  return $ChannelsListStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

// dart format on
