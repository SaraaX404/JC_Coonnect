// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_input_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClassInputRequest {


/// Create a copy of ClassInputRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassInputRequestCopyWith<ClassInputRequest> get copyWith => _$ClassInputRequestCopyWithImpl<ClassInputRequest>(this as ClassInputRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ClassInputRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassInputRequest&&(identical(other.academicYearId, _this.academicYearId) || other.academicYearId == _this.academicYearId)&&(identical(other.gradeId, _this.gradeId) || other.gradeId == _this.gradeId)&&(identical(other.academicTrackId, _this.academicTrackId) || other.academicTrackId == _this.academicTrackId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.capacity, _this.capacity) || other.capacity == _this.capacity)&&(identical(other.room, _this.room) || other.room == _this.room)&&(identical(other.formTeacherId, _this.formTeacherId) || other.formTeacherId == _this.formTeacherId)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as ClassInputRequest;
  return Object.hash(runtimeType,_this.academicYearId,_this.gradeId,_this.academicTrackId,_this.name,_this.capacity,_this.room,_this.formTeacherId,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as ClassInputRequest;
  return 'ClassInputRequest(academicYearId: ${_this.academicYearId}, gradeId: ${_this.gradeId}, academicTrackId: ${_this.academicTrackId}, name: ${_this.name}, capacity: ${_this.capacity}, room: ${_this.room}, formTeacherId: ${_this.formTeacherId}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $ClassInputRequestCopyWith<$Res>  {
  factory $ClassInputRequestCopyWith(ClassInputRequest value, $Res Function(ClassInputRequest) _then) = _$ClassInputRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "academic_year_id", required: true, disallowNullValue: true) String academicYearId,@JsonKey(name: "grade_id", required: true, disallowNullValue: true) String gradeId,@JsonKey(name: "academic_track_id", includeIfNull: false) String? academicTrackId,@JsonKey(required: true, disallowNullValue: true) String name,@JsonKey(includeIfNull: false, fromJson: ClassInputRequest._read_capacity, toJson: ClassInputRequest._write_capacity) int? capacity,@JsonKey(disallowNullValue: true, includeIfNull: false) String? room,@JsonKey(name: "form_teacher_id", includeIfNull: false) String? formTeacherId,@JsonKey(readValue: ClassInputRequest._extras, fromJson: ClassInputRequest._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$ClassInputRequestCopyWithImpl<$Res>
    implements $ClassInputRequestCopyWith<$Res> {
  _$ClassInputRequestCopyWithImpl(this._self, this._then);

  final ClassInputRequest _self;
  final $Res Function(ClassInputRequest) _then;

/// Create a copy of ClassInputRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? academicYearId = null,Object? gradeId = null,Object? academicTrackId = freezed,Object? name = null,Object? capacity = freezed,Object? room = freezed,Object? formTeacherId = freezed,Object? additionalProperties = null,}) {
  return _then(ClassInputRequest(
academicYearId: null == academicYearId ? _self.academicYearId : academicYearId // ignore: cast_nullable_to_non_nullable
as String,gradeId: null == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as String,academicTrackId: freezed == academicTrackId ? _self.academicTrackId : academicTrackId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,capacity: freezed == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int?,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as String?,formTeacherId: freezed == formTeacherId ? _self.formTeacherId : formTeacherId // ignore: cast_nullable_to_non_nullable
as String?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassInputRequest].
extension ClassInputRequestPatterns on ClassInputRequest {
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
