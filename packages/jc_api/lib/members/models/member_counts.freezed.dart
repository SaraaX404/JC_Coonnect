// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_counts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MemberCounts {


/// Create a copy of MemberCounts
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberCountsCopyWith<MemberCounts> get copyWith => _$MemberCountsCopyWithImpl<MemberCounts>(this as MemberCounts, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MemberCounts;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberCounts&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.student, _this.student) || other.student == _this.student)&&(identical(other.staff, _this.staff) || other.staff == _this.staff)&&(identical(other.alumni, _this.alumni) || other.alumni == _this.alumni)&&(identical(other.guardian, _this.guardian) || other.guardian == _this.guardian)&&(identical(other.admin, _this.admin) || other.admin == _this.admin)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as MemberCounts;
  return Object.hash(runtimeType,_this.total,_this.student,_this.staff,_this.alumni,_this.guardian,_this.admin,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as MemberCounts;
  return 'MemberCounts(total: ${_this.total}, student: ${_this.student}, staff: ${_this.staff}, alumni: ${_this.alumni}, guardian: ${_this.guardian}, admin: ${_this.admin}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $MemberCountsCopyWith<$Res>  {
  factory $MemberCountsCopyWith(MemberCounts value, $Res Function(MemberCounts) _then) = _$MemberCountsCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true, fromJson: MemberCounts._read_total, toJson: MemberCounts._write_total) int total,@JsonKey(required: true, disallowNullValue: true, fromJson: MemberCounts._read_student, toJson: MemberCounts._write_student) int student,@JsonKey(required: true, disallowNullValue: true, fromJson: MemberCounts._read_staff, toJson: MemberCounts._write_staff) int staff,@JsonKey(required: true, disallowNullValue: true, fromJson: MemberCounts._read_alumni, toJson: MemberCounts._write_alumni) int alumni,@JsonKey(required: true, disallowNullValue: true, fromJson: MemberCounts._read_guardian, toJson: MemberCounts._write_guardian) int guardian,@JsonKey(required: true, disallowNullValue: true, fromJson: MemberCounts._read_admin, toJson: MemberCounts._write_admin) int admin,@JsonKey(readValue: MemberCounts._extras, fromJson: MemberCounts._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$MemberCountsCopyWithImpl<$Res>
    implements $MemberCountsCopyWith<$Res> {
  _$MemberCountsCopyWithImpl(this._self, this._then);

  final MemberCounts _self;
  final $Res Function(MemberCounts) _then;

/// Create a copy of MemberCounts
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? student = null,Object? staff = null,Object? alumni = null,Object? guardian = null,Object? admin = null,Object? additionalProperties = null,}) {
  return _then(MemberCounts(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,student: null == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as int,staff: null == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as int,alumni: null == alumni ? _self.alumni : alumni // ignore: cast_nullable_to_non_nullable
as int,guardian: null == guardian ? _self.guardian : guardian // ignore: cast_nullable_to_non_nullable
as int,admin: null == admin ? _self.admin : admin // ignore: cast_nullable_to_non_nullable
as int,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [MemberCounts].
extension MemberCountsPatterns on MemberCounts {
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
