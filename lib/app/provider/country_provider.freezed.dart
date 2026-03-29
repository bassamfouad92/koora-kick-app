// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CountryState {

 List<CountryModel> get countries; List<CountryModel> get filteredCountries; String get searchQuery; CountryModel get defaultCountry;
/// Create a copy of CountryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryStateCopyWith<CountryState> get copyWith => _$CountryStateCopyWithImpl<CountryState>(this as CountryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryState&&const DeepCollectionEquality().equals(other.countries, countries)&&const DeepCollectionEquality().equals(other.filteredCountries, filteredCountries)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.defaultCountry, defaultCountry) || other.defaultCountry == defaultCountry));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(countries),const DeepCollectionEquality().hash(filteredCountries),searchQuery,defaultCountry);

@override
String toString() {
  return 'CountryState(countries: $countries, filteredCountries: $filteredCountries, searchQuery: $searchQuery, defaultCountry: $defaultCountry)';
}


}

/// @nodoc
abstract mixin class $CountryStateCopyWith<$Res>  {
  factory $CountryStateCopyWith(CountryState value, $Res Function(CountryState) _then) = _$CountryStateCopyWithImpl;
@useResult
$Res call({
 List<CountryModel> countries, List<CountryModel> filteredCountries, String searchQuery, CountryModel defaultCountry
});


$CountryModelCopyWith<$Res> get defaultCountry;

}
/// @nodoc
class _$CountryStateCopyWithImpl<$Res>
    implements $CountryStateCopyWith<$Res> {
  _$CountryStateCopyWithImpl(this._self, this._then);

  final CountryState _self;
  final $Res Function(CountryState) _then;

/// Create a copy of CountryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? countries = null,Object? filteredCountries = null,Object? searchQuery = null,Object? defaultCountry = null,}) {
  return _then(_self.copyWith(
countries: null == countries ? _self.countries : countries // ignore: cast_nullable_to_non_nullable
as List<CountryModel>,filteredCountries: null == filteredCountries ? _self.filteredCountries : filteredCountries // ignore: cast_nullable_to_non_nullable
as List<CountryModel>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,defaultCountry: null == defaultCountry ? _self.defaultCountry : defaultCountry // ignore: cast_nullable_to_non_nullable
as CountryModel,
  ));
}
/// Create a copy of CountryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryModelCopyWith<$Res> get defaultCountry {
  
  return $CountryModelCopyWith<$Res>(_self.defaultCountry, (value) {
    return _then(_self.copyWith(defaultCountry: value));
  });
}
}


/// Adds pattern-matching-related methods to [CountryState].
extension CountryStatePatterns on CountryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryState value)  $default,){
final _that = this;
switch (_that) {
case _CountryState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryState value)?  $default,){
final _that = this;
switch (_that) {
case _CountryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CountryModel> countries,  List<CountryModel> filteredCountries,  String searchQuery,  CountryModel defaultCountry)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryState() when $default != null:
return $default(_that.countries,_that.filteredCountries,_that.searchQuery,_that.defaultCountry);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CountryModel> countries,  List<CountryModel> filteredCountries,  String searchQuery,  CountryModel defaultCountry)  $default,) {final _that = this;
switch (_that) {
case _CountryState():
return $default(_that.countries,_that.filteredCountries,_that.searchQuery,_that.defaultCountry);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CountryModel> countries,  List<CountryModel> filteredCountries,  String searchQuery,  CountryModel defaultCountry)?  $default,) {final _that = this;
switch (_that) {
case _CountryState() when $default != null:
return $default(_that.countries,_that.filteredCountries,_that.searchQuery,_that.defaultCountry);case _:
  return null;

}
}

}

/// @nodoc


class _CountryState implements CountryState {
  const _CountryState({final  List<CountryModel> countries = const [], final  List<CountryModel> filteredCountries = const [], this.searchQuery = '', this.defaultCountry = CountryModel.defaultCountry}): _countries = countries,_filteredCountries = filteredCountries;
  

 final  List<CountryModel> _countries;
@override@JsonKey() List<CountryModel> get countries {
  if (_countries is EqualUnmodifiableListView) return _countries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_countries);
}

 final  List<CountryModel> _filteredCountries;
@override@JsonKey() List<CountryModel> get filteredCountries {
  if (_filteredCountries is EqualUnmodifiableListView) return _filteredCountries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredCountries);
}

@override@JsonKey() final  String searchQuery;
@override@JsonKey() final  CountryModel defaultCountry;

/// Create a copy of CountryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryStateCopyWith<_CountryState> get copyWith => __$CountryStateCopyWithImpl<_CountryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryState&&const DeepCollectionEquality().equals(other._countries, _countries)&&const DeepCollectionEquality().equals(other._filteredCountries, _filteredCountries)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.defaultCountry, defaultCountry) || other.defaultCountry == defaultCountry));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_countries),const DeepCollectionEquality().hash(_filteredCountries),searchQuery,defaultCountry);

@override
String toString() {
  return 'CountryState(countries: $countries, filteredCountries: $filteredCountries, searchQuery: $searchQuery, defaultCountry: $defaultCountry)';
}


}

/// @nodoc
abstract mixin class _$CountryStateCopyWith<$Res> implements $CountryStateCopyWith<$Res> {
  factory _$CountryStateCopyWith(_CountryState value, $Res Function(_CountryState) _then) = __$CountryStateCopyWithImpl;
@override @useResult
$Res call({
 List<CountryModel> countries, List<CountryModel> filteredCountries, String searchQuery, CountryModel defaultCountry
});


@override $CountryModelCopyWith<$Res> get defaultCountry;

}
/// @nodoc
class __$CountryStateCopyWithImpl<$Res>
    implements _$CountryStateCopyWith<$Res> {
  __$CountryStateCopyWithImpl(this._self, this._then);

  final _CountryState _self;
  final $Res Function(_CountryState) _then;

/// Create a copy of CountryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? countries = null,Object? filteredCountries = null,Object? searchQuery = null,Object? defaultCountry = null,}) {
  return _then(_CountryState(
countries: null == countries ? _self._countries : countries // ignore: cast_nullable_to_non_nullable
as List<CountryModel>,filteredCountries: null == filteredCountries ? _self._filteredCountries : filteredCountries // ignore: cast_nullable_to_non_nullable
as List<CountryModel>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,defaultCountry: null == defaultCountry ? _self.defaultCountry : defaultCountry // ignore: cast_nullable_to_non_nullable
as CountryModel,
  ));
}

/// Create a copy of CountryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryModelCopyWith<$Res> get defaultCountry {
  
  return $CountryModelCopyWith<$Res>(_self.defaultCountry, (value) {
    return _then(_self.copyWith(defaultCountry: value));
  });
}
}

// dart format on
