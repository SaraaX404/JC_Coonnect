// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ActionEnumKnown {


/// Create a copy of ActionEnumKnown
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActionEnumKnownCopyWith<ActionEnumKnown> get copyWith => _$ActionEnumKnownCopyWithImpl<ActionEnumKnown>(this as ActionEnumKnown, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ActionEnumKnown;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActionEnumKnown&&(identical(other.value, _this.value) || other.value == _this.value));
}


@override
int get hashCode {
  final _this = this as ActionEnumKnown;
  return Object.hash(runtimeType,_this.value);
}

@override
String toString() {
  final _this = this as ActionEnumKnown;
  return 'ActionEnumKnown(value: ${_this.value})';
}


}

/// @nodoc
abstract mixin class $ActionEnumKnownCopyWith<$Res>  {
  factory $ActionEnumKnownCopyWith(ActionEnumKnown value, $Res Function(ActionEnumKnown) _then) = _$ActionEnumKnownCopyWithImpl;
@useResult
$Res call({
 ActionEnumValue value
});




}
/// @nodoc
class _$ActionEnumKnownCopyWithImpl<$Res>
    implements $ActionEnumKnownCopyWith<$Res> {
  _$ActionEnumKnownCopyWithImpl(this._self, this._then);

  final ActionEnumKnown _self;
  final $Res Function(ActionEnumKnown) _then;

/// Create a copy of ActionEnumKnown
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(ActionEnumKnown(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as ActionEnumValue,
  ));
}

}


/// Adds pattern-matching-related methods to [ActionEnumKnown].
extension ActionEnumKnownPatterns on ActionEnumKnown {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({required TResult orElse(),}){
final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({required TResult orElse(),}) {final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  return null;

}
}

}

/// @nodoc
mixin _$ActionEnumUnknown {


/// Create a copy of ActionEnumUnknown
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActionEnumUnknownCopyWith<ActionEnumUnknown> get copyWith => _$ActionEnumUnknownCopyWithImpl<ActionEnumUnknown>(this as ActionEnumUnknown, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ActionEnumUnknown;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActionEnumUnknown&&(identical(other.rawValue, _this.rawValue) || other.rawValue == _this.rawValue));
}


@override
int get hashCode {
  final _this = this as ActionEnumUnknown;
  return Object.hash(runtimeType,_this.rawValue);
}

@override
String toString() {
  final _this = this as ActionEnumUnknown;
  return 'ActionEnumUnknown(rawValue: ${_this.rawValue})';
}


}

/// @nodoc
abstract mixin class $ActionEnumUnknownCopyWith<$Res>  {
  factory $ActionEnumUnknownCopyWith(ActionEnumUnknown value, $Res Function(ActionEnumUnknown) _then) = _$ActionEnumUnknownCopyWithImpl;
@useResult
$Res call({
 String rawValue
});




}
/// @nodoc
class _$ActionEnumUnknownCopyWithImpl<$Res>
    implements $ActionEnumUnknownCopyWith<$Res> {
  _$ActionEnumUnknownCopyWithImpl(this._self, this._then);

  final ActionEnumUnknown _self;
  final $Res Function(ActionEnumUnknown) _then;

/// Create a copy of ActionEnumUnknown
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rawValue = null,}) {
  return _then(ActionEnumUnknown(
null == rawValue ? _self.rawValue : rawValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ActionEnumUnknown].
extension ActionEnumUnknownPatterns on ActionEnumUnknown {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({required TResult orElse(),}){
final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({required TResult orElse(),}) {final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  return null;

}
}

}

// dart format on
