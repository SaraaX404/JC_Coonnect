// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StaffClass {


/// Create a copy of StaffClass
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffClassCopyWith<StaffClass> get copyWith => _$StaffClassCopyWithImpl<StaffClass>(this as StaffClass, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as StaffClass;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffClass&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.grade, _this.grade) || other.grade == _this.grade)&&(identical(other.academicYear, _this.academicYear) || other.academicYear == _this.academicYear)&&(identical(other.room, _this.room) || other.room == _this.room)&&(identical(other.studentCount, _this.studentCount) || other.studentCount == _this.studentCount)&&(identical(other.isFormTeacher, _this.isFormTeacher) || other.isFormTeacher == _this.isFormTeacher)&&const DeepCollectionEquality().equals(other.subjects, _this.subjects)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as StaffClass;
  return Object.hash(runtimeType,_this.id,_this.name,_this.grade,_this.academicYear,_this.room,_this.studentCount,_this.isFormTeacher,const DeepCollectionEquality().hash(_this.subjects),const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as StaffClass;
  return 'StaffClass(id: ${_this.id}, name: ${_this.name}, grade: ${_this.grade}, academicYear: ${_this.academicYear}, room: ${_this.room}, studentCount: ${_this.studentCount}, isFormTeacher: ${_this.isFormTeacher}, subjects: ${_this.subjects}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $StaffClassCopyWith<$Res>  {
  factory $StaffClassCopyWith(StaffClass value, $Res Function(StaffClass) _then) = _$StaffClassCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) String id,@JsonKey(required: true, disallowNullValue: true) String name,@JsonKey(required: true, disallowNullValue: true) Ref grade,@JsonKey(name: "academic_year", required: true, disallowNullValue: true) Ref academicYear,@JsonKey(required: true, disallowNullValue: true) String room,@JsonKey(name: "student_count", required: true, disallowNullValue: true, fromJson: StaffClass._read_studentCount, toJson: StaffClass._write_studentCount) int studentCount,@JsonKey(name: "is_form_teacher", required: true, disallowNullValue: true) bool isFormTeacher,@JsonKey(required: true, disallowNullValue: true) List<Ref> subjects,@JsonKey(readValue: StaffClass._extras, fromJson: StaffClass._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$RefCopyWith<$Res> get grade;$RefCopyWith<$Res> get academicYear;

}
/// @nodoc
class _$StaffClassCopyWithImpl<$Res>
    implements $StaffClassCopyWith<$Res> {
  _$StaffClassCopyWithImpl(this._self, this._then);

  final StaffClass _self;
  final $Res Function(StaffClass) _then;

/// Create a copy of StaffClass
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? grade = null,Object? academicYear = null,Object? room = null,Object? studentCount = null,Object? isFormTeacher = null,Object? subjects = null,Object? additionalProperties = null,}) {
  return _then(StaffClass(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,grade: null == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as Ref,academicYear: null == academicYear ? _self.academicYear : academicYear // ignore: cast_nullable_to_non_nullable
as Ref,room: null == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as String,studentCount: null == studentCount ? _self.studentCount : studentCount // ignore: cast_nullable_to_non_nullable
as int,isFormTeacher: null == isFormTeacher ? _self.isFormTeacher : isFormTeacher // ignore: cast_nullable_to_non_nullable
as bool,subjects: null == subjects ? _self.subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<Ref>,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of StaffClass
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefCopyWith<$Res> get grade {
  
  return $RefCopyWith<$Res>(_self.grade, (value) {
    return _then(_self.copyWith(grade: value));
  });
}/// Create a copy of StaffClass
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefCopyWith<$Res> get academicYear {
  
  return $RefCopyWith<$Res>(_self.academicYear, (value) {
    return _then(_self.copyWith(academicYear: value));
  });
}
}


/// Adds pattern-matching-related methods to [StaffClass].
extension StaffClassPatterns on StaffClass {
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
