// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Class {


/// Create a copy of Class
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassCopyWith<Class> get copyWith => _$ClassCopyWithImpl<Class>(this as Class, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Class;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Class&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.academicYear, _this.academicYear) || other.academicYear == _this.academicYear)&&(identical(other.grade, _this.grade) || other.grade == _this.grade)&&(identical(other.academicTrack, _this.academicTrack) || other.academicTrack == _this.academicTrack)&&(identical(other.capacity, _this.capacity) || other.capacity == _this.capacity)&&(identical(other.room, _this.room) || other.room == _this.room)&&(identical(other.formTeacher, _this.formTeacher) || other.formTeacher == _this.formTeacher)&&(identical(other.studentCount, _this.studentCount) || other.studentCount == _this.studentCount)&&(identical(other.archivedAt, _this.archivedAt) || other.archivedAt == _this.archivedAt)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as Class;
  return Object.hash(runtimeType,_this.id,_this.name,_this.academicYear,_this.grade,_this.academicTrack,_this.capacity,_this.room,_this.formTeacher,_this.studentCount,_this.archivedAt,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as Class;
  return 'Class(id: ${_this.id}, name: ${_this.name}, academicYear: ${_this.academicYear}, grade: ${_this.grade}, academicTrack: ${_this.academicTrack}, capacity: ${_this.capacity}, room: ${_this.room}, formTeacher: ${_this.formTeacher}, studentCount: ${_this.studentCount}, archivedAt: ${_this.archivedAt}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $ClassCopyWith<$Res>  {
  factory $ClassCopyWith(Class value, $Res Function(Class) _then) = _$ClassCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) String id,@JsonKey(required: true, disallowNullValue: true) String name,@JsonKey(name: "academic_year", required: true, disallowNullValue: true) Ref academicYear,@JsonKey(required: true, disallowNullValue: true) Ref grade,@JsonKey(name: "academic_track", required: true) Ref? academicTrack,@JsonKey(required: true, fromJson: Class._read_capacity, toJson: Class._write_capacity) int? capacity,@JsonKey(required: true, disallowNullValue: true) String room,@JsonKey(name: "form_teacher", required: true) MemberRef? formTeacher,@JsonKey(name: "student_count", required: true, disallowNullValue: true, fromJson: Class._read_studentCount, toJson: Class._write_studentCount) int studentCount,@JsonKey(name: "archived_at", required: true, fromJson: Class._read_archivedAt, toJson: Class._write_archivedAt) DateTime? archivedAt,@JsonKey(readValue: Class._extras, fromJson: Class._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$RefCopyWith<$Res> get academicYear;$RefCopyWith<$Res> get grade;$RefCopyWith<$Res>? get academicTrack;$MemberRefCopyWith<$Res>? get formTeacher;

}
/// @nodoc
class _$ClassCopyWithImpl<$Res>
    implements $ClassCopyWith<$Res> {
  _$ClassCopyWithImpl(this._self, this._then);

  final Class _self;
  final $Res Function(Class) _then;

/// Create a copy of Class
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? academicYear = null,Object? grade = null,Object? academicTrack = freezed,Object? capacity = freezed,Object? room = null,Object? formTeacher = freezed,Object? studentCount = null,Object? archivedAt = freezed,Object? additionalProperties = null,}) {
  return _then(Class(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,academicYear: null == academicYear ? _self.academicYear : academicYear // ignore: cast_nullable_to_non_nullable
as Ref,grade: null == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as Ref,academicTrack: freezed == academicTrack ? _self.academicTrack : academicTrack // ignore: cast_nullable_to_non_nullable
as Ref?,capacity: freezed == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int?,room: null == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as String,formTeacher: freezed == formTeacher ? _self.formTeacher : formTeacher // ignore: cast_nullable_to_non_nullable
as MemberRef?,studentCount: null == studentCount ? _self.studentCount : studentCount // ignore: cast_nullable_to_non_nullable
as int,archivedAt: freezed == archivedAt ? _self.archivedAt : archivedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of Class
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefCopyWith<$Res> get academicYear {
  
  return $RefCopyWith<$Res>(_self.academicYear, (value) {
    return _then(_self.copyWith(academicYear: value));
  });
}/// Create a copy of Class
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefCopyWith<$Res> get grade {
  
  return $RefCopyWith<$Res>(_self.grade, (value) {
    return _then(_self.copyWith(grade: value));
  });
}/// Create a copy of Class
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefCopyWith<$Res>? get academicTrack {
    if (_self.academicTrack == null) {
    return null;
  }

  return $RefCopyWith<$Res>(_self.academicTrack!, (value) {
    return _then(_self.copyWith(academicTrack: value));
  });
}/// Create a copy of Class
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberRefCopyWith<$Res>? get formTeacher {
    if (_self.formTeacher == null) {
    return null;
  }

  return $MemberRefCopyWith<$Res>(_self.formTeacher!, (value) {
    return _then(_self.copyWith(formTeacher: value));
  });
}
}


/// Adds pattern-matching-related methods to [Class].
extension ClassPatterns on Class {
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
