// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_class_input_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PatchedClassInputRequest {


/// Create a copy of PatchedClassInputRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedClassInputRequestCopyWith<PatchedClassInputRequest> get copyWith => _$PatchedClassInputRequestCopyWithImpl<PatchedClassInputRequest>(this as PatchedClassInputRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PatchedClassInputRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedClassInputRequest&&(identical(other.academicYearId, _this.academicYearId) || other.academicYearId == _this.academicYearId)&&(identical(other.gradeId, _this.gradeId) || other.gradeId == _this.gradeId)&&(identical(other.academicTrackId, _this.academicTrackId) || other.academicTrackId == _this.academicTrackId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.capacity, _this.capacity) || other.capacity == _this.capacity)&&(identical(other.room, _this.room) || other.room == _this.room)&&(identical(other.formTeacherId, _this.formTeacherId) || other.formTeacherId == _this.formTeacherId)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as PatchedClassInputRequest;
  return Object.hash(runtimeType,_this.academicYearId,_this.gradeId,_this.academicTrackId,_this.name,_this.capacity,_this.room,_this.formTeacherId,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as PatchedClassInputRequest;
  return 'PatchedClassInputRequest(academicYearId: ${_this.academicYearId}, gradeId: ${_this.gradeId}, academicTrackId: ${_this.academicTrackId}, name: ${_this.name}, capacity: ${_this.capacity}, room: ${_this.room}, formTeacherId: ${_this.formTeacherId}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $PatchedClassInputRequestCopyWith<$Res>  {
  factory $PatchedClassInputRequestCopyWith(PatchedClassInputRequest value, $Res Function(PatchedClassInputRequest) _then) = _$PatchedClassInputRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "academic_year_id", disallowNullValue: true, includeIfNull: false) String? academicYearId,@JsonKey(name: "grade_id", disallowNullValue: true, includeIfNull: false) String? gradeId,@JsonKey(name: "academic_track_id", includeIfNull: false) String? academicTrackId,@JsonKey(disallowNullValue: true, includeIfNull: false) String? name,@JsonKey(includeIfNull: false, fromJson: PatchedClassInputRequest._read_capacity, toJson: PatchedClassInputRequest._write_capacity) int? capacity,@JsonKey(disallowNullValue: true, includeIfNull: false) String? room,@JsonKey(name: "form_teacher_id", includeIfNull: false) String? formTeacherId,@JsonKey(readValue: PatchedClassInputRequest._extras, fromJson: PatchedClassInputRequest._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$PatchedClassInputRequestCopyWithImpl<$Res>
    implements $PatchedClassInputRequestCopyWith<$Res> {
  _$PatchedClassInputRequestCopyWithImpl(this._self, this._then);

  final PatchedClassInputRequest _self;
  final $Res Function(PatchedClassInputRequest) _then;

/// Create a copy of PatchedClassInputRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? academicYearId = freezed,Object? gradeId = freezed,Object? academicTrackId = freezed,Object? name = freezed,Object? capacity = freezed,Object? room = freezed,Object? formTeacherId = freezed,Object? additionalProperties = null,}) {
  return _then(PatchedClassInputRequest(
academicYearId: freezed == academicYearId ? _self.academicYearId : academicYearId // ignore: cast_nullable_to_non_nullable
as String?,gradeId: freezed == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as String?,academicTrackId: freezed == academicTrackId ? _self.academicTrackId : academicTrackId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,capacity: freezed == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int?,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as String?,formTeacherId: freezed == formTeacherId ? _self.formTeacherId : formTeacherId // ignore: cast_nullable_to_non_nullable
as String?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchedClassInputRequest].
extension PatchedClassInputRequestPatterns on PatchedClassInputRequest {
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
