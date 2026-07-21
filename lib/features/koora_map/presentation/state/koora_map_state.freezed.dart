// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'koora_map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$KooraMapStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KooraMapStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KooraMapStatus()';
}


}

/// @nodoc
class $KooraMapStatusCopyWith<$Res>  {
$KooraMapStatusCopyWith(KooraMapStatus _, $Res Function(KooraMapStatus) __);
}


/// Adds pattern-matching-related methods to [KooraMapStatus].
extension KooraMapStatusPatterns on KooraMapStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  loaded,TResult Function( AppError error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  loaded,required TResult Function( AppError error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  loaded,TResult? Function( AppError error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded();case _Error() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements KooraMapStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KooraMapStatus.initial()';
}


}




/// @nodoc


class _Loading implements KooraMapStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KooraMapStatus.loading()';
}


}




/// @nodoc


class _Loaded implements KooraMapStatus {
  const _Loaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KooraMapStatus.loaded()';
}


}




/// @nodoc


class _Error implements KooraMapStatus {
  const _Error(this.error);
  

 final  AppError error;

/// Create a copy of KooraMapStatus
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
  return 'KooraMapStatus.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $KooraMapStatusCopyWith<$Res> {
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

/// Create a copy of KooraMapStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of KooraMapStatus
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
mixin _$KooraMapState {

 KooraMapStatus get status; List<MapMarkerModel> get markers; MapFilter get filter; MapMarkerModel? get selectedMarker;// Where the camera should point; set once location resolves.
 MapCameraTarget? get cameraTarget; bool get hasUserLocation;
/// Create a copy of KooraMapState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KooraMapStateCopyWith<KooraMapState> get copyWith => _$KooraMapStateCopyWithImpl<KooraMapState>(this as KooraMapState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KooraMapState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.markers, markers)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.selectedMarker, selectedMarker) || other.selectedMarker == selectedMarker)&&(identical(other.cameraTarget, cameraTarget) || other.cameraTarget == cameraTarget)&&(identical(other.hasUserLocation, hasUserLocation) || other.hasUserLocation == hasUserLocation));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(markers),filter,selectedMarker,cameraTarget,hasUserLocation);

@override
String toString() {
  return 'KooraMapState(status: $status, markers: $markers, filter: $filter, selectedMarker: $selectedMarker, cameraTarget: $cameraTarget, hasUserLocation: $hasUserLocation)';
}


}

/// @nodoc
abstract mixin class $KooraMapStateCopyWith<$Res>  {
  factory $KooraMapStateCopyWith(KooraMapState value, $Res Function(KooraMapState) _then) = _$KooraMapStateCopyWithImpl;
@useResult
$Res call({
 KooraMapStatus status, List<MapMarkerModel> markers, MapFilter filter, MapMarkerModel? selectedMarker, MapCameraTarget? cameraTarget, bool hasUserLocation
});


$KooraMapStatusCopyWith<$Res> get status;$MapMarkerModelCopyWith<$Res>? get selectedMarker;

}
/// @nodoc
class _$KooraMapStateCopyWithImpl<$Res>
    implements $KooraMapStateCopyWith<$Res> {
  _$KooraMapStateCopyWithImpl(this._self, this._then);

  final KooraMapState _self;
  final $Res Function(KooraMapState) _then;

/// Create a copy of KooraMapState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? markers = null,Object? filter = null,Object? selectedMarker = freezed,Object? cameraTarget = freezed,Object? hasUserLocation = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as KooraMapStatus,markers: null == markers ? _self.markers : markers // ignore: cast_nullable_to_non_nullable
as List<MapMarkerModel>,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as MapFilter,selectedMarker: freezed == selectedMarker ? _self.selectedMarker : selectedMarker // ignore: cast_nullable_to_non_nullable
as MapMarkerModel?,cameraTarget: freezed == cameraTarget ? _self.cameraTarget : cameraTarget // ignore: cast_nullable_to_non_nullable
as MapCameraTarget?,hasUserLocation: null == hasUserLocation ? _self.hasUserLocation : hasUserLocation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of KooraMapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KooraMapStatusCopyWith<$Res> get status {
  
  return $KooraMapStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of KooraMapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MapMarkerModelCopyWith<$Res>? get selectedMarker {
    if (_self.selectedMarker == null) {
    return null;
  }

  return $MapMarkerModelCopyWith<$Res>(_self.selectedMarker!, (value) {
    return _then(_self.copyWith(selectedMarker: value));
  });
}
}


/// Adds pattern-matching-related methods to [KooraMapState].
extension KooraMapStatePatterns on KooraMapState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KooraMapState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KooraMapState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KooraMapState value)  $default,){
final _that = this;
switch (_that) {
case _KooraMapState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KooraMapState value)?  $default,){
final _that = this;
switch (_that) {
case _KooraMapState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( KooraMapStatus status,  List<MapMarkerModel> markers,  MapFilter filter,  MapMarkerModel? selectedMarker,  MapCameraTarget? cameraTarget,  bool hasUserLocation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KooraMapState() when $default != null:
return $default(_that.status,_that.markers,_that.filter,_that.selectedMarker,_that.cameraTarget,_that.hasUserLocation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( KooraMapStatus status,  List<MapMarkerModel> markers,  MapFilter filter,  MapMarkerModel? selectedMarker,  MapCameraTarget? cameraTarget,  bool hasUserLocation)  $default,) {final _that = this;
switch (_that) {
case _KooraMapState():
return $default(_that.status,_that.markers,_that.filter,_that.selectedMarker,_that.cameraTarget,_that.hasUserLocation);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( KooraMapStatus status,  List<MapMarkerModel> markers,  MapFilter filter,  MapMarkerModel? selectedMarker,  MapCameraTarget? cameraTarget,  bool hasUserLocation)?  $default,) {final _that = this;
switch (_that) {
case _KooraMapState() when $default != null:
return $default(_that.status,_that.markers,_that.filter,_that.selectedMarker,_that.cameraTarget,_that.hasUserLocation);case _:
  return null;

}
}

}

/// @nodoc


class _KooraMapState implements KooraMapState {
  const _KooraMapState({this.status = const KooraMapStatus.initial(), final  List<MapMarkerModel> markers = const [], this.filter = MapFilter.all, this.selectedMarker, this.cameraTarget, this.hasUserLocation = false}): _markers = markers;
  

@override@JsonKey() final  KooraMapStatus status;
 final  List<MapMarkerModel> _markers;
@override@JsonKey() List<MapMarkerModel> get markers {
  if (_markers is EqualUnmodifiableListView) return _markers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_markers);
}

@override@JsonKey() final  MapFilter filter;
@override final  MapMarkerModel? selectedMarker;
// Where the camera should point; set once location resolves.
@override final  MapCameraTarget? cameraTarget;
@override@JsonKey() final  bool hasUserLocation;

/// Create a copy of KooraMapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KooraMapStateCopyWith<_KooraMapState> get copyWith => __$KooraMapStateCopyWithImpl<_KooraMapState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KooraMapState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._markers, _markers)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.selectedMarker, selectedMarker) || other.selectedMarker == selectedMarker)&&(identical(other.cameraTarget, cameraTarget) || other.cameraTarget == cameraTarget)&&(identical(other.hasUserLocation, hasUserLocation) || other.hasUserLocation == hasUserLocation));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_markers),filter,selectedMarker,cameraTarget,hasUserLocation);

@override
String toString() {
  return 'KooraMapState(status: $status, markers: $markers, filter: $filter, selectedMarker: $selectedMarker, cameraTarget: $cameraTarget, hasUserLocation: $hasUserLocation)';
}


}

/// @nodoc
abstract mixin class _$KooraMapStateCopyWith<$Res> implements $KooraMapStateCopyWith<$Res> {
  factory _$KooraMapStateCopyWith(_KooraMapState value, $Res Function(_KooraMapState) _then) = __$KooraMapStateCopyWithImpl;
@override @useResult
$Res call({
 KooraMapStatus status, List<MapMarkerModel> markers, MapFilter filter, MapMarkerModel? selectedMarker, MapCameraTarget? cameraTarget, bool hasUserLocation
});


@override $KooraMapStatusCopyWith<$Res> get status;@override $MapMarkerModelCopyWith<$Res>? get selectedMarker;

}
/// @nodoc
class __$KooraMapStateCopyWithImpl<$Res>
    implements _$KooraMapStateCopyWith<$Res> {
  __$KooraMapStateCopyWithImpl(this._self, this._then);

  final _KooraMapState _self;
  final $Res Function(_KooraMapState) _then;

/// Create a copy of KooraMapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? markers = null,Object? filter = null,Object? selectedMarker = freezed,Object? cameraTarget = freezed,Object? hasUserLocation = null,}) {
  return _then(_KooraMapState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as KooraMapStatus,markers: null == markers ? _self._markers : markers // ignore: cast_nullable_to_non_nullable
as List<MapMarkerModel>,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as MapFilter,selectedMarker: freezed == selectedMarker ? _self.selectedMarker : selectedMarker // ignore: cast_nullable_to_non_nullable
as MapMarkerModel?,cameraTarget: freezed == cameraTarget ? _self.cameraTarget : cameraTarget // ignore: cast_nullable_to_non_nullable
as MapCameraTarget?,hasUserLocation: null == hasUserLocation ? _self.hasUserLocation : hasUserLocation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of KooraMapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KooraMapStatusCopyWith<$Res> get status {
  
  return $KooraMapStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of KooraMapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MapMarkerModelCopyWith<$Res>? get selectedMarker {
    if (_self.selectedMarker == null) {
    return null;
  }

  return $MapMarkerModelCopyWith<$Res>(_self.selectedMarker!, (value) {
    return _then(_self.copyWith(selectedMarker: value));
  });
}
}

// dart format on
