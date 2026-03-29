// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsState {

 List<SettingItem> get items; bool get isLoading; bool get isSaving;
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsStateCopyWith<SettingsState> get copyWith => _$SettingsStateCopyWithImpl<SettingsState>(this as SettingsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),isLoading,isSaving);

@override
String toString() {
  return 'SettingsState(items: $items, isLoading: $isLoading, isSaving: $isSaving)';
}


}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<$Res>  {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) _then) = _$SettingsStateCopyWithImpl;
@useResult
$Res call({
 List<SettingItem> items, bool isLoading, bool isSaving
});




}
/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._self, this._then);

  final SettingsState _self;
  final $Res Function(SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? isLoading = null,Object? isSaving = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<SettingItem>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingsState].
extension SettingsStatePatterns on SettingsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsState value)  $default,){
final _that = this;
switch (_that) {
case _SettingsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsState value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SettingItem> items,  bool isLoading,  bool isSaving)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.items,_that.isLoading,_that.isSaving);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SettingItem> items,  bool isLoading,  bool isSaving)  $default,) {final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that.items,_that.isLoading,_that.isSaving);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SettingItem> items,  bool isLoading,  bool isSaving)?  $default,) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.items,_that.isLoading,_that.isSaving);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsState implements SettingsState {
  const _SettingsState({final  List<SettingItem> items = const [], this.isLoading = false, this.isSaving = false}): _items = items;
  

 final  List<SettingItem> _items;
@override@JsonKey() List<SettingItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSaving;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsStateCopyWith<_SettingsState> get copyWith => __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsState&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),isLoading,isSaving);

@override
String toString() {
  return 'SettingsState(items: $items, isLoading: $isLoading, isSaving: $isSaving)';
}


}

/// @nodoc
abstract mixin class _$SettingsStateCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(_SettingsState value, $Res Function(_SettingsState) _then) = __$SettingsStateCopyWithImpl;
@override @useResult
$Res call({
 List<SettingItem> items, bool isLoading, bool isSaving
});




}
/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(this._self, this._then);

  final _SettingsState _self;
  final $Res Function(_SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? isLoading = null,Object? isSaving = null,}) {
  return _then(_SettingsState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<SettingItem>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$SettingItem {

 String get id; Widget get icon; String get label; Object get currentValue; List<SettingOption> get options;
/// Create a copy of SettingItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingItemCopyWith<SettingItem> get copyWith => _$SettingItemCopyWithImpl<SettingItem>(this as SettingItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingItem&&(identical(other.id, id) || other.id == id)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.label, label) || other.label == label)&&const DeepCollectionEquality().equals(other.currentValue, currentValue)&&const DeepCollectionEquality().equals(other.options, options));
}


@override
int get hashCode => Object.hash(runtimeType,id,icon,label,const DeepCollectionEquality().hash(currentValue),const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'SettingItem(id: $id, icon: $icon, label: $label, currentValue: $currentValue, options: $options)';
}


}

/// @nodoc
abstract mixin class $SettingItemCopyWith<$Res>  {
  factory $SettingItemCopyWith(SettingItem value, $Res Function(SettingItem) _then) = _$SettingItemCopyWithImpl;
@useResult
$Res call({
 String id, Widget icon, String label, Object currentValue, List<SettingOption> options
});




}
/// @nodoc
class _$SettingItemCopyWithImpl<$Res>
    implements $SettingItemCopyWith<$Res> {
  _$SettingItemCopyWithImpl(this._self, this._then);

  final SettingItem _self;
  final $Res Function(SettingItem) _then;

/// Create a copy of SettingItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? icon = null,Object? label = null,Object? currentValue = null,Object? options = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as Widget,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,currentValue: null == currentValue ? _self.currentValue : currentValue ,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<SettingOption>,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingItem].
extension SettingItemPatterns on SettingItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingItem value)  $default,){
final _that = this;
switch (_that) {
case _SettingItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingItem value)?  $default,){
final _that = this;
switch (_that) {
case _SettingItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Widget icon,  String label,  Object currentValue,  List<SettingOption> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingItem() when $default != null:
return $default(_that.id,_that.icon,_that.label,_that.currentValue,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Widget icon,  String label,  Object currentValue,  List<SettingOption> options)  $default,) {final _that = this;
switch (_that) {
case _SettingItem():
return $default(_that.id,_that.icon,_that.label,_that.currentValue,_that.options);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Widget icon,  String label,  Object currentValue,  List<SettingOption> options)?  $default,) {final _that = this;
switch (_that) {
case _SettingItem() when $default != null:
return $default(_that.id,_that.icon,_that.label,_that.currentValue,_that.options);case _:
  return null;

}
}

}

/// @nodoc


class _SettingItem implements SettingItem {
  const _SettingItem({required this.id, required this.icon, required this.label, required this.currentValue, required final  List<SettingOption> options}): _options = options;
  

@override final  String id;
@override final  Widget icon;
@override final  String label;
@override final  Object currentValue;
 final  List<SettingOption> _options;
@override List<SettingOption> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of SettingItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingItemCopyWith<_SettingItem> get copyWith => __$SettingItemCopyWithImpl<_SettingItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingItem&&(identical(other.id, id) || other.id == id)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.label, label) || other.label == label)&&const DeepCollectionEquality().equals(other.currentValue, currentValue)&&const DeepCollectionEquality().equals(other._options, _options));
}


@override
int get hashCode => Object.hash(runtimeType,id,icon,label,const DeepCollectionEquality().hash(currentValue),const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'SettingItem(id: $id, icon: $icon, label: $label, currentValue: $currentValue, options: $options)';
}


}

/// @nodoc
abstract mixin class _$SettingItemCopyWith<$Res> implements $SettingItemCopyWith<$Res> {
  factory _$SettingItemCopyWith(_SettingItem value, $Res Function(_SettingItem) _then) = __$SettingItemCopyWithImpl;
@override @useResult
$Res call({
 String id, Widget icon, String label, Object currentValue, List<SettingOption> options
});




}
/// @nodoc
class __$SettingItemCopyWithImpl<$Res>
    implements _$SettingItemCopyWith<$Res> {
  __$SettingItemCopyWithImpl(this._self, this._then);

  final _SettingItem _self;
  final $Res Function(_SettingItem) _then;

/// Create a copy of SettingItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? icon = null,Object? label = null,Object? currentValue = null,Object? options = null,}) {
  return _then(_SettingItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as Widget,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,currentValue: null == currentValue ? _self.currentValue : currentValue ,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<SettingOption>,
  ));
}


}

/// @nodoc
mixin _$SettingOption {

 Object get value; String get label;
/// Create a copy of SettingOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingOptionCopyWith<SettingOption> get copyWith => _$SettingOptionCopyWithImpl<SettingOption>(this as SettingOption, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingOption&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.label, label) || other.label == label));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value),label);

@override
String toString() {
  return 'SettingOption(value: $value, label: $label)';
}


}

/// @nodoc
abstract mixin class $SettingOptionCopyWith<$Res>  {
  factory $SettingOptionCopyWith(SettingOption value, $Res Function(SettingOption) _then) = _$SettingOptionCopyWithImpl;
@useResult
$Res call({
 Object value, String label
});




}
/// @nodoc
class _$SettingOptionCopyWithImpl<$Res>
    implements $SettingOptionCopyWith<$Res> {
  _$SettingOptionCopyWithImpl(this._self, this._then);

  final SettingOption _self;
  final $Res Function(SettingOption) _then;

/// Create a copy of SettingOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? label = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value ,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingOption].
extension SettingOptionPatterns on SettingOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingOption value)  $default,){
final _that = this;
switch (_that) {
case _SettingOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingOption value)?  $default,){
final _that = this;
switch (_that) {
case _SettingOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Object value,  String label)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingOption() when $default != null:
return $default(_that.value,_that.label);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Object value,  String label)  $default,) {final _that = this;
switch (_that) {
case _SettingOption():
return $default(_that.value,_that.label);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Object value,  String label)?  $default,) {final _that = this;
switch (_that) {
case _SettingOption() when $default != null:
return $default(_that.value,_that.label);case _:
  return null;

}
}

}

/// @nodoc


class _SettingOption implements SettingOption {
  const _SettingOption({required this.value, required this.label});
  

@override final  Object value;
@override final  String label;

/// Create a copy of SettingOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingOptionCopyWith<_SettingOption> get copyWith => __$SettingOptionCopyWithImpl<_SettingOption>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingOption&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.label, label) || other.label == label));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value),label);

@override
String toString() {
  return 'SettingOption(value: $value, label: $label)';
}


}

/// @nodoc
abstract mixin class _$SettingOptionCopyWith<$Res> implements $SettingOptionCopyWith<$Res> {
  factory _$SettingOptionCopyWith(_SettingOption value, $Res Function(_SettingOption) _then) = __$SettingOptionCopyWithImpl;
@override @useResult
$Res call({
 Object value, String label
});




}
/// @nodoc
class __$SettingOptionCopyWithImpl<$Res>
    implements _$SettingOptionCopyWith<$Res> {
  __$SettingOptionCopyWithImpl(this._self, this._then);

  final _SettingOption _self;
  final $Res Function(_SettingOption) _then;

/// Create a copy of SettingOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? label = null,}) {
  return _then(_SettingOption(
value: null == value ? _self.value : value ,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
