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

 List<SettingsSection> get sections; bool get isLoading; bool get isSaving;
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsStateCopyWith<SettingsState> get copyWith => _$SettingsStateCopyWithImpl<SettingsState>(this as SettingsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState&&const DeepCollectionEquality().equals(other.sections, sections)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sections),isLoading,isSaving);

@override
String toString() {
  return 'SettingsState(sections: $sections, isLoading: $isLoading, isSaving: $isSaving)';
}


}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<$Res>  {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) _then) = _$SettingsStateCopyWithImpl;
@useResult
$Res call({
 List<SettingsSection> sections, bool isLoading, bool isSaving
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
@pragma('vm:prefer-inline') @override $Res call({Object? sections = null,Object? isLoading = null,Object? isSaving = null,}) {
  return _then(_self.copyWith(
sections: null == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<SettingsSection>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SettingsSection> sections,  bool isLoading,  bool isSaving)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.sections,_that.isLoading,_that.isSaving);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SettingsSection> sections,  bool isLoading,  bool isSaving)  $default,) {final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that.sections,_that.isLoading,_that.isSaving);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SettingsSection> sections,  bool isLoading,  bool isSaving)?  $default,) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.sections,_that.isLoading,_that.isSaving);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsState implements SettingsState {
  const _SettingsState({final  List<SettingsSection> sections = const [], this.isLoading = false, this.isSaving = false}): _sections = sections;
  

 final  List<SettingsSection> _sections;
@override@JsonKey() List<SettingsSection> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsState&&const DeepCollectionEquality().equals(other._sections, _sections)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sections),isLoading,isSaving);

@override
String toString() {
  return 'SettingsState(sections: $sections, isLoading: $isLoading, isSaving: $isSaving)';
}


}

/// @nodoc
abstract mixin class _$SettingsStateCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(_SettingsState value, $Res Function(_SettingsState) _then) = __$SettingsStateCopyWithImpl;
@override @useResult
$Res call({
 List<SettingsSection> sections, bool isLoading, bool isSaving
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
@override @pragma('vm:prefer-inline') $Res call({Object? sections = null,Object? isLoading = null,Object? isSaving = null,}) {
  return _then(_SettingsState(
sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<SettingsSection>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$SettingsSection {

 String get title; List<SettingItem> get items;
/// Create a copy of SettingsSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsSectionCopyWith<SettingsSection> get copyWith => _$SettingsSectionCopyWithImpl<SettingsSection>(this as SettingsSection, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsSection&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'SettingsSection(title: $title, items: $items)';
}


}

/// @nodoc
abstract mixin class $SettingsSectionCopyWith<$Res>  {
  factory $SettingsSectionCopyWith(SettingsSection value, $Res Function(SettingsSection) _then) = _$SettingsSectionCopyWithImpl;
@useResult
$Res call({
 String title, List<SettingItem> items
});




}
/// @nodoc
class _$SettingsSectionCopyWithImpl<$Res>
    implements $SettingsSectionCopyWith<$Res> {
  _$SettingsSectionCopyWithImpl(this._self, this._then);

  final SettingsSection _self;
  final $Res Function(SettingsSection) _then;

/// Create a copy of SettingsSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? items = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<SettingItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingsSection].
extension SettingsSectionPatterns on SettingsSection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsSection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsSection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsSection value)  $default,){
final _that = this;
switch (_that) {
case _SettingsSection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsSection value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsSection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  List<SettingItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsSection() when $default != null:
return $default(_that.title,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  List<SettingItem> items)  $default,) {final _that = this;
switch (_that) {
case _SettingsSection():
return $default(_that.title,_that.items);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  List<SettingItem> items)?  $default,) {final _that = this;
switch (_that) {
case _SettingsSection() when $default != null:
return $default(_that.title,_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsSection implements SettingsSection {
  const _SettingsSection({required this.title, required final  List<SettingItem> items}): _items = items;
  

@override final  String title;
 final  List<SettingItem> _items;
@override List<SettingItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of SettingsSection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsSectionCopyWith<_SettingsSection> get copyWith => __$SettingsSectionCopyWithImpl<_SettingsSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsSection&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'SettingsSection(title: $title, items: $items)';
}


}

/// @nodoc
abstract mixin class _$SettingsSectionCopyWith<$Res> implements $SettingsSectionCopyWith<$Res> {
  factory _$SettingsSectionCopyWith(_SettingsSection value, $Res Function(_SettingsSection) _then) = __$SettingsSectionCopyWithImpl;
@override @useResult
$Res call({
 String title, List<SettingItem> items
});




}
/// @nodoc
class __$SettingsSectionCopyWithImpl<$Res>
    implements _$SettingsSectionCopyWith<$Res> {
  __$SettingsSectionCopyWithImpl(this._self, this._then);

  final _SettingsSection _self;
  final $Res Function(_SettingsSection) _then;

/// Create a copy of SettingsSection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? items = null,}) {
  return _then(_SettingsSection(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<SettingItem>,
  ));
}


}

/// @nodoc
mixin _$SettingItem {

 String get id; Widget get icon; String get label; String? get trailingText;
/// Create a copy of SettingItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingItemCopyWith<SettingItem> get copyWith => _$SettingItemCopyWithImpl<SettingItem>(this as SettingItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingItem&&(identical(other.id, id) || other.id == id)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.label, label) || other.label == label)&&(identical(other.trailingText, trailingText) || other.trailingText == trailingText));
}


@override
int get hashCode => Object.hash(runtimeType,id,icon,label,trailingText);

@override
String toString() {
  return 'SettingItem(id: $id, icon: $icon, label: $label, trailingText: $trailingText)';
}


}

/// @nodoc
abstract mixin class $SettingItemCopyWith<$Res>  {
  factory $SettingItemCopyWith(SettingItem value, $Res Function(SettingItem) _then) = _$SettingItemCopyWithImpl;
@useResult
$Res call({
 String id, Widget icon, String label, String? trailingText
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? icon = null,Object? label = null,Object? trailingText = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as Widget,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,trailingText: freezed == trailingText ? _self.trailingText : trailingText // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Widget icon,  String label,  String? trailingText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingItem() when $default != null:
return $default(_that.id,_that.icon,_that.label,_that.trailingText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Widget icon,  String label,  String? trailingText)  $default,) {final _that = this;
switch (_that) {
case _SettingItem():
return $default(_that.id,_that.icon,_that.label,_that.trailingText);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Widget icon,  String label,  String? trailingText)?  $default,) {final _that = this;
switch (_that) {
case _SettingItem() when $default != null:
return $default(_that.id,_that.icon,_that.label,_that.trailingText);case _:
  return null;

}
}

}

/// @nodoc


class _SettingItem implements SettingItem {
  const _SettingItem({required this.id, required this.icon, required this.label, this.trailingText});
  

@override final  String id;
@override final  Widget icon;
@override final  String label;
@override final  String? trailingText;

/// Create a copy of SettingItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingItemCopyWith<_SettingItem> get copyWith => __$SettingItemCopyWithImpl<_SettingItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingItem&&(identical(other.id, id) || other.id == id)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.label, label) || other.label == label)&&(identical(other.trailingText, trailingText) || other.trailingText == trailingText));
}


@override
int get hashCode => Object.hash(runtimeType,id,icon,label,trailingText);

@override
String toString() {
  return 'SettingItem(id: $id, icon: $icon, label: $label, trailingText: $trailingText)';
}


}

/// @nodoc
abstract mixin class _$SettingItemCopyWith<$Res> implements $SettingItemCopyWith<$Res> {
  factory _$SettingItemCopyWith(_SettingItem value, $Res Function(_SettingItem) _then) = __$SettingItemCopyWithImpl;
@override @useResult
$Res call({
 String id, Widget icon, String label, String? trailingText
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? icon = null,Object? label = null,Object? trailingText = freezed,}) {
  return _then(_SettingItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as Widget,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,trailingText: freezed == trailingText ? _self.trailingText : trailingText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
