// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mfa_enrollment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MfaEnrollment {


/// Create a copy of MfaEnrollment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MfaEnrollmentCopyWith<MfaEnrollment> get copyWith => _$MfaEnrollmentCopyWithImpl<MfaEnrollment>(this as MfaEnrollment, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MfaEnrollment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MfaEnrollment&&(identical(other.otpauthUri, _this.otpauthUri) || other.otpauthUri == _this.otpauthUri)&&(identical(other.secret, _this.secret) || other.secret == _this.secret)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as MfaEnrollment;
  return Object.hash(runtimeType,_this.otpauthUri,_this.secret,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as MfaEnrollment;
  return 'MfaEnrollment(otpauthUri: ${_this.otpauthUri}, secret: ${_this.secret}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $MfaEnrollmentCopyWith<$Res>  {
  factory $MfaEnrollmentCopyWith(MfaEnrollment value, $Res Function(MfaEnrollment) _then) = _$MfaEnrollmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "otpauth_uri", required: true, disallowNullValue: true) String otpauthUri,@JsonKey(required: true, disallowNullValue: true) String secret,@JsonKey(readValue: MfaEnrollment._extras, fromJson: MfaEnrollment._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$MfaEnrollmentCopyWithImpl<$Res>
    implements $MfaEnrollmentCopyWith<$Res> {
  _$MfaEnrollmentCopyWithImpl(this._self, this._then);

  final MfaEnrollment _self;
  final $Res Function(MfaEnrollment) _then;

/// Create a copy of MfaEnrollment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? otpauthUri = null,Object? secret = null,Object? additionalProperties = null,}) {
  return _then(MfaEnrollment(
otpauthUri: null == otpauthUri ? _self.otpauthUri : otpauthUri // ignore: cast_nullable_to_non_nullable
as String,secret: null == secret ? _self.secret : secret // ignore: cast_nullable_to_non_nullable
as String,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [MfaEnrollment].
extension MfaEnrollmentPatterns on MfaEnrollment {
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
