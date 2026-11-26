// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_profile_input_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StudentProfileInputRequest {


/// Create a copy of StudentProfileInputRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentProfileInputRequestCopyWith<StudentProfileInputRequest> get copyWith => _$StudentProfileInputRequestCopyWithImpl<StudentProfileInputRequest>(this as StudentProfileInputRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as StudentProfileInputRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentProfileInputRequest&&(identical(other.studentNumber, _this.studentNumber) || other.studentNumber == _this.studentNumber)&&(identical(other.houseId, _this.houseId) || other.houseId == _this.houseId)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as StudentProfileInputRequest;
  return Object.hash(runtimeType,_this.studentNumber,_this.houseId,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as StudentProfileInputRequest;
  return 'StudentProfileInputRequest(studentNumber: ${_this.studentNumber}, houseId: ${_this.houseId}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $StudentProfileInputRequestCopyWith<$Res>  {
  factory $StudentProfileInputRequestCopyWith(StudentProfileInputRequest value, $Res Function(StudentProfileInputRequest) _then) = _$StudentProfileInputRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "student_number", required: true, disallowNullValue: true) String studentNumber,@JsonKey(name: "house_id", includeIfNull: false) String? houseId,@JsonKey(readValue: StudentProfileInputRequest._extras, fromJson: StudentProfileInputRequest._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$StudentProfileInputRequestCopyWithImpl<$Res>
    implements $StudentProfileInputRequestCopyWith<$Res> {
  _$StudentProfileInputRequestCopyWithImpl(this._self, this._then);

  final StudentProfileInputRequest _self;
  final $Res Function(StudentProfileInputRequest) _then;

/// Create a copy of StudentProfileInputRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentNumber = null,Object? houseId = freezed,Object? additionalProperties = null,}) {
  return _then(StudentProfileInputRequest(
studentNumber: null == studentNumber ? _self.studentNumber : studentNumber // ignore: cast_nullable_to_non_nullable
as String,houseId: freezed == houseId ? _self.houseId : houseId // ignore: cast_nullable_to_non_nullable
as String?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentProfileInputRequest].
extension StudentProfileInputRequestPatterns on StudentProfileInputRequest {
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
