// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_checks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SystemChecks {


/// Create a copy of SystemChecks
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SystemChecksCopyWith<SystemChecks> get copyWith => _$SystemChecksCopyWithImpl<SystemChecks>(this as SystemChecks, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SystemChecks;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemChecks&&(identical(other.emailVerified, _this.emailVerified) || other.emailVerified == _this.emailVerified)&&(identical(other.graduationRecordFound, _this.graduationRecordFound) || other.graduationRecordFound == _this.graduationRecordFound)&&(identical(other.proofOfAttendanceUploaded, _this.proofOfAttendanceUploaded) || other.proofOfAttendanceUploaded == _this.proofOfAttendanceUploaded)&&(identical(other.schoolEmailOnDomain, _this.schoolEmailOnDomain) || other.schoolEmailOnDomain == _this.schoolEmailOnDomain)&&(identical(other.termsAccepted, _this.termsAccepted) || other.termsAccepted == _this.termsAccepted)&&(identical(other.termsVersion, _this.termsVersion) || other.termsVersion == _this.termsVersion)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as SystemChecks;
  return Object.hash(runtimeType,_this.emailVerified,_this.graduationRecordFound,_this.proofOfAttendanceUploaded,_this.schoolEmailOnDomain,_this.termsAccepted,_this.termsVersion,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as SystemChecks;
  return 'SystemChecks(emailVerified: ${_this.emailVerified}, graduationRecordFound: ${_this.graduationRecordFound}, proofOfAttendanceUploaded: ${_this.proofOfAttendanceUploaded}, schoolEmailOnDomain: ${_this.schoolEmailOnDomain}, termsAccepted: ${_this.termsAccepted}, termsVersion: ${_this.termsVersion}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $SystemChecksCopyWith<$Res>  {
  factory $SystemChecksCopyWith(SystemChecks value, $Res Function(SystemChecks) _then) = _$SystemChecksCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "email_verified", required: true, disallowNullValue: true) bool emailVerified,@JsonKey(name: "graduation_record_found", required: true) bool? graduationRecordFound,@JsonKey(name: "proof_of_attendance_uploaded", required: true) bool? proofOfAttendanceUploaded,@JsonKey(name: "school_email_on_domain", required: true) bool? schoolEmailOnDomain,@JsonKey(name: "terms_accepted", required: true, disallowNullValue: true) bool termsAccepted,@JsonKey(name: "terms_version", required: true) String? termsVersion,@JsonKey(readValue: SystemChecks._extras, fromJson: SystemChecks._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$SystemChecksCopyWithImpl<$Res>
    implements $SystemChecksCopyWith<$Res> {
  _$SystemChecksCopyWithImpl(this._self, this._then);

  final SystemChecks _self;
  final $Res Function(SystemChecks) _then;

/// Create a copy of SystemChecks
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? emailVerified = null,Object? graduationRecordFound = freezed,Object? proofOfAttendanceUploaded = freezed,Object? schoolEmailOnDomain = freezed,Object? termsAccepted = null,Object? termsVersion = freezed,Object? additionalProperties = null,}) {
  return _then(SystemChecks(
emailVerified: null == emailVerified ? _self.emailVerified : emailVerified // ignore: cast_nullable_to_non_nullable
as bool,graduationRecordFound: freezed == graduationRecordFound ? _self.graduationRecordFound : graduationRecordFound // ignore: cast_nullable_to_non_nullable
as bool?,proofOfAttendanceUploaded: freezed == proofOfAttendanceUploaded ? _self.proofOfAttendanceUploaded : proofOfAttendanceUploaded // ignore: cast_nullable_to_non_nullable
as bool?,schoolEmailOnDomain: freezed == schoolEmailOnDomain ? _self.schoolEmailOnDomain : schoolEmailOnDomain // ignore: cast_nullable_to_non_nullable
as bool?,termsAccepted: null == termsAccepted ? _self.termsAccepted : termsAccepted // ignore: cast_nullable_to_non_nullable
as bool,termsVersion: freezed == termsVersion ? _self.termsVersion : termsVersion // ignore: cast_nullable_to_non_nullable
as String?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [SystemChecks].
extension SystemChecksPatterns on SystemChecks {
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
