// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recovery_codes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RecoveryCodes {


/// Create a copy of RecoveryCodes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecoveryCodesCopyWith<RecoveryCodes> get copyWith => _$RecoveryCodesCopyWithImpl<RecoveryCodes>(this as RecoveryCodes, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RecoveryCodes;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecoveryCodes&&const DeepCollectionEquality().equals(other.recoveryCodes, _this.recoveryCodes)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as RecoveryCodes;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.recoveryCodes),const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as RecoveryCodes;
  return 'RecoveryCodes(recoveryCodes: ${_this.recoveryCodes}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $RecoveryCodesCopyWith<$Res>  {
  factory $RecoveryCodesCopyWith(RecoveryCodes value, $Res Function(RecoveryCodes) _then) = _$RecoveryCodesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "recovery_codes", required: true, disallowNullValue: true) List<String> recoveryCodes,@JsonKey(readValue: RecoveryCodes._extras, fromJson: RecoveryCodes._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$RecoveryCodesCopyWithImpl<$Res>
    implements $RecoveryCodesCopyWith<$Res> {
  _$RecoveryCodesCopyWithImpl(this._self, this._then);

  final RecoveryCodes _self;
  final $Res Function(RecoveryCodes) _then;

/// Create a copy of RecoveryCodes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recoveryCodes = null,Object? additionalProperties = null,}) {
  return _then(RecoveryCodes(
recoveryCodes: null == recoveryCodes ? _self.recoveryCodes : recoveryCodes // ignore: cast_nullable_to_non_nullable
as List<String>,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [RecoveryCodes].
extension RecoveryCodesPatterns on RecoveryCodes {
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
