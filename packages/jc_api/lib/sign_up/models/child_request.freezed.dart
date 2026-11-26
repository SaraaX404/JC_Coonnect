// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChildRequest {


/// Create a copy of ChildRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChildRequestCopyWith<ChildRequest> get copyWith => _$ChildRequestCopyWithImpl<ChildRequest>(this as ChildRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ChildRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChildRequest&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.studentNumber, _this.studentNumber) || other.studentNumber == _this.studentNumber)&&(identical(other.relationship, _this.relationship) || other.relationship == _this.relationship)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as ChildRequest;
  return Object.hash(runtimeType,_this.fullName,_this.studentNumber,_this.relationship,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as ChildRequest;
  return 'ChildRequest(fullName: ${_this.fullName}, studentNumber: ${_this.studentNumber}, relationship: ${_this.relationship}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $ChildRequestCopyWith<$Res>  {
  factory $ChildRequestCopyWith(ChildRequest value, $Res Function(ChildRequest) _then) = _$ChildRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "full_name", required: true, disallowNullValue: true) String fullName,@JsonKey(name: "student_number", required: true, disallowNullValue: true) String studentNumber,@JsonKey(required: true, disallowNullValue: true) String relationship,@JsonKey(readValue: ChildRequest._extras, fromJson: ChildRequest._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$ChildRequestCopyWithImpl<$Res>
    implements $ChildRequestCopyWith<$Res> {
  _$ChildRequestCopyWithImpl(this._self, this._then);

  final ChildRequest _self;
  final $Res Function(ChildRequest) _then;

/// Create a copy of ChildRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = null,Object? studentNumber = null,Object? relationship = null,Object? additionalProperties = null,}) {
  return _then(ChildRequest(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,studentNumber: null == studentNumber ? _self.studentNumber : studentNumber // ignore: cast_nullable_to_non_nullable
as String,relationship: null == relationship ? _self.relationship : relationship // ignore: cast_nullable_to_non_nullable
as String,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChildRequest].
extension ChildRequestPatterns on ChildRequest {
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
