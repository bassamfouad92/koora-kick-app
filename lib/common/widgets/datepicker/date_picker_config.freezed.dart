// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_picker_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DatePickerConfig {

 DateTime get selectedDate; ValueChanged<DateTime> get onDateChange;/// Generic marker predicate (not rides-specific)
 DateEventPredicate? get eventPredicate;/// DDD window for date range
 DateRangeWindow get range;
/// Create a copy of DatePickerConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DatePickerConfigCopyWith<DatePickerConfig> get copyWith => _$DatePickerConfigCopyWithImpl<DatePickerConfig>(this as DatePickerConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DatePickerConfig&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.onDateChange, onDateChange) || other.onDateChange == onDateChange)&&(identical(other.eventPredicate, eventPredicate) || other.eventPredicate == eventPredicate)&&(identical(other.range, range) || other.range == range));
}


@override
int get hashCode => Object.hash(runtimeType,selectedDate,onDateChange,eventPredicate,range);

@override
String toString() {
  return 'DatePickerConfig(selectedDate: $selectedDate, onDateChange: $onDateChange, eventPredicate: $eventPredicate, range: $range)';
}


}

/// @nodoc
abstract mixin class $DatePickerConfigCopyWith<$Res>  {
  factory $DatePickerConfigCopyWith(DatePickerConfig value, $Res Function(DatePickerConfig) _then) = _$DatePickerConfigCopyWithImpl;
@useResult
$Res call({
 DateTime selectedDate, ValueChanged<DateTime> onDateChange, DateEventPredicate? eventPredicate, DateRangeWindow range
});




}
/// @nodoc
class _$DatePickerConfigCopyWithImpl<$Res>
    implements $DatePickerConfigCopyWith<$Res> {
  _$DatePickerConfigCopyWithImpl(this._self, this._then);

  final DatePickerConfig _self;
  final $Res Function(DatePickerConfig) _then;

/// Create a copy of DatePickerConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedDate = null,Object? onDateChange = null,Object? eventPredicate = freezed,Object? range = null,}) {
  return _then(_self.copyWith(
selectedDate: null == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime,onDateChange: null == onDateChange ? _self.onDateChange : onDateChange // ignore: cast_nullable_to_non_nullable
as ValueChanged<DateTime>,eventPredicate: freezed == eventPredicate ? _self.eventPredicate : eventPredicate // ignore: cast_nullable_to_non_nullable
as DateEventPredicate?,range: null == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as DateRangeWindow,
  ));
}

}


/// Adds pattern-matching-related methods to [DatePickerConfig].
extension DatePickerConfigPatterns on DatePickerConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DatePickerConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DatePickerConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DatePickerConfig value)  $default,){
final _that = this;
switch (_that) {
case _DatePickerConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DatePickerConfig value)?  $default,){
final _that = this;
switch (_that) {
case _DatePickerConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime selectedDate,  ValueChanged<DateTime> onDateChange,  DateEventPredicate? eventPredicate,  DateRangeWindow range)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DatePickerConfig() when $default != null:
return $default(_that.selectedDate,_that.onDateChange,_that.eventPredicate,_that.range);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime selectedDate,  ValueChanged<DateTime> onDateChange,  DateEventPredicate? eventPredicate,  DateRangeWindow range)  $default,) {final _that = this;
switch (_that) {
case _DatePickerConfig():
return $default(_that.selectedDate,_that.onDateChange,_that.eventPredicate,_that.range);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime selectedDate,  ValueChanged<DateTime> onDateChange,  DateEventPredicate? eventPredicate,  DateRangeWindow range)?  $default,) {final _that = this;
switch (_that) {
case _DatePickerConfig() when $default != null:
return $default(_that.selectedDate,_that.onDateChange,_that.eventPredicate,_that.range);case _:
  return null;

}
}

}

/// @nodoc


class _DatePickerConfig implements DatePickerConfig {
  const _DatePickerConfig({required this.selectedDate, required this.onDateChange, this.eventPredicate, this.range = DateRangeWindow.standard});
  

@override final  DateTime selectedDate;
@override final  ValueChanged<DateTime> onDateChange;
/// Generic marker predicate (not rides-specific)
@override final  DateEventPredicate? eventPredicate;
/// DDD window for date range
@override@JsonKey() final  DateRangeWindow range;

/// Create a copy of DatePickerConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DatePickerConfigCopyWith<_DatePickerConfig> get copyWith => __$DatePickerConfigCopyWithImpl<_DatePickerConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DatePickerConfig&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.onDateChange, onDateChange) || other.onDateChange == onDateChange)&&(identical(other.eventPredicate, eventPredicate) || other.eventPredicate == eventPredicate)&&(identical(other.range, range) || other.range == range));
}


@override
int get hashCode => Object.hash(runtimeType,selectedDate,onDateChange,eventPredicate,range);

@override
String toString() {
  return 'DatePickerConfig(selectedDate: $selectedDate, onDateChange: $onDateChange, eventPredicate: $eventPredicate, range: $range)';
}


}

/// @nodoc
abstract mixin class _$DatePickerConfigCopyWith<$Res> implements $DatePickerConfigCopyWith<$Res> {
  factory _$DatePickerConfigCopyWith(_DatePickerConfig value, $Res Function(_DatePickerConfig) _then) = __$DatePickerConfigCopyWithImpl;
@override @useResult
$Res call({
 DateTime selectedDate, ValueChanged<DateTime> onDateChange, DateEventPredicate? eventPredicate, DateRangeWindow range
});




}
/// @nodoc
class __$DatePickerConfigCopyWithImpl<$Res>
    implements _$DatePickerConfigCopyWith<$Res> {
  __$DatePickerConfigCopyWithImpl(this._self, this._then);

  final _DatePickerConfig _self;
  final $Res Function(_DatePickerConfig) _then;

/// Create a copy of DatePickerConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedDate = null,Object? onDateChange = null,Object? eventPredicate = freezed,Object? range = null,}) {
  return _then(_DatePickerConfig(
selectedDate: null == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime,onDateChange: null == onDateChange ? _self.onDateChange : onDateChange // ignore: cast_nullable_to_non_nullable
as ValueChanged<DateTime>,eventPredicate: freezed == eventPredicate ? _self.eventPredicate : eventPredicate // ignore: cast_nullable_to_non_nullable
as DateEventPredicate?,range: null == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as DateRangeWindow,
  ));
}


}

// dart format on
