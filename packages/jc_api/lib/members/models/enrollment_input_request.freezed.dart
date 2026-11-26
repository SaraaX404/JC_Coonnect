// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enrollment_input_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EnrollmentInputRequest {


/// Create a copy of EnrollmentInputRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnrollmentInputRequestCopyWith<EnrollmentInputRequest> get copyWith => _$EnrollmentInputRequestCopyWithImpl<EnrollmentInputRequest>(this as EnrollmentInputRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as EnrollmentInputRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnrollmentInputRequest&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.academicTrackId, _this.academicTrackId) || other.academicTrackId == _this.academicTrackId)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as EnrollmentInputRequest;
  return Object.hash(runtimeType,_this.classId,_this.academicTrackId,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as EnrollmentInputRequest;
  return 'EnrollmentInputRequest(classId: ${_this.classId}, academicTrackId: ${_this.academicTrackId}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $EnrollmentInputRequestCopyWith<$Res>  {
  factory $EnrollmentInputRequestCopyWith(EnrollmentInputRequest value, $Res Function(EnrollmentInputRequest) _then) = _$EnrollmentInputRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "class_id", required: true, disallowNullValue: true) String classId,@JsonKey(name: "academic_track_id", includeIfNull: false) String? academicTrackId,@JsonKey(readValue: EnrollmentInputRequest._extras, fromJson: EnrollmentInputRequest._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$EnrollmentInputRequestCopyWithImpl<$Res>
    implements $EnrollmentInputRequestCopyWith<$Res> {
  _$EnrollmentInputRequestCopyWithImpl(this._self, this._then);

  final EnrollmentInputRequest _self;
  final $Res Function(EnrollmentInputRequest) _then;

/// Create a copy of EnrollmentInputRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? classId = null,Object? academicTrackId = freezed,Object? additionalProperties = null,}) {
  return _then(EnrollmentInputRequest(
classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String,academicTrackId: freezed == academicTrackId ? _self.academicTrackId : academicTrackId // ignore: cast_nullable_to_non_nullable
as String?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [EnrollmentInputRequest].
extension EnrollmentInputRequestPatterns on EnrollmentInputRequest {
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
