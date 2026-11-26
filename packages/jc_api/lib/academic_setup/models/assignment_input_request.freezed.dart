// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assignment_input_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AssignmentInputRequest {


/// Create a copy of AssignmentInputRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssignmentInputRequestCopyWith<AssignmentInputRequest> get copyWith => _$AssignmentInputRequestCopyWithImpl<AssignmentInputRequest>(this as AssignmentInputRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AssignmentInputRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssignmentInputRequest&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.subjectId, _this.subjectId) || other.subjectId == _this.subjectId)&&(identical(other.teacherId, _this.teacherId) || other.teacherId == _this.teacherId)&&(identical(other.room, _this.room) || other.room == _this.room)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as AssignmentInputRequest;
  return Object.hash(runtimeType,_this.classId,_this.subjectId,_this.teacherId,_this.room,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as AssignmentInputRequest;
  return 'AssignmentInputRequest(classId: ${_this.classId}, subjectId: ${_this.subjectId}, teacherId: ${_this.teacherId}, room: ${_this.room}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $AssignmentInputRequestCopyWith<$Res>  {
  factory $AssignmentInputRequestCopyWith(AssignmentInputRequest value, $Res Function(AssignmentInputRequest) _then) = _$AssignmentInputRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "class_id", required: true, disallowNullValue: true) String classId,@JsonKey(name: "subject_id", required: true, disallowNullValue: true) String subjectId,@JsonKey(name: "teacher_id", required: true, disallowNullValue: true) String teacherId,@JsonKey(disallowNullValue: true, includeIfNull: false) String? room,@JsonKey(readValue: AssignmentInputRequest._extras, fromJson: AssignmentInputRequest._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$AssignmentInputRequestCopyWithImpl<$Res>
    implements $AssignmentInputRequestCopyWith<$Res> {
  _$AssignmentInputRequestCopyWithImpl(this._self, this._then);

  final AssignmentInputRequest _self;
  final $Res Function(AssignmentInputRequest) _then;

/// Create a copy of AssignmentInputRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? classId = null,Object? subjectId = null,Object? teacherId = null,Object? room = freezed,Object? additionalProperties = null,}) {
  return _then(AssignmentInputRequest(
classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,teacherId: null == teacherId ? _self.teacherId : teacherId // ignore: cast_nullable_to_non_nullable
as String,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as String?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [AssignmentInputRequest].
extension AssignmentInputRequestPatterns on AssignmentInputRequest {
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
