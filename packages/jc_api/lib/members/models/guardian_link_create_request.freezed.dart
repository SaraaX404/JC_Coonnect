// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guardian_link_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GuardianLinkCreateRequest {


/// Create a copy of GuardianLinkCreateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuardianLinkCreateRequestCopyWith<GuardianLinkCreateRequest> get copyWith => _$GuardianLinkCreateRequestCopyWithImpl<GuardianLinkCreateRequest>(this as GuardianLinkCreateRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GuardianLinkCreateRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuardianLinkCreateRequest&&(identical(other.guardianId, _this.guardianId) || other.guardianId == _this.guardianId)&&(identical(other.relationship, _this.relationship) || other.relationship == _this.relationship)&&(identical(other.isPrimary, _this.isPrimary) || other.isPrimary == _this.isPrimary)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as GuardianLinkCreateRequest;
  return Object.hash(runtimeType,_this.guardianId,_this.relationship,_this.isPrimary,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as GuardianLinkCreateRequest;
  return 'GuardianLinkCreateRequest(guardianId: ${_this.guardianId}, relationship: ${_this.relationship}, isPrimary: ${_this.isPrimary}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $GuardianLinkCreateRequestCopyWith<$Res>  {
  factory $GuardianLinkCreateRequestCopyWith(GuardianLinkCreateRequest value, $Res Function(GuardianLinkCreateRequest) _then) = _$GuardianLinkCreateRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "guardian_id", required: true, disallowNullValue: true) String guardianId,@JsonKey(required: true, disallowNullValue: true) String relationship,@JsonKey(name: "is_primary", disallowNullValue: true, readValue: GuardianLinkCreateRequest._presentValue, fromJson: GuardianLinkCreateRequest._read_isPrimary, toJson: GuardianLinkCreateRequest._write_isPrimary) bool isPrimary,@JsonKey(readValue: GuardianLinkCreateRequest._extras, fromJson: GuardianLinkCreateRequest._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$GuardianLinkCreateRequestCopyWithImpl<$Res>
    implements $GuardianLinkCreateRequestCopyWith<$Res> {
  _$GuardianLinkCreateRequestCopyWithImpl(this._self, this._then);

  final GuardianLinkCreateRequest _self;
  final $Res Function(GuardianLinkCreateRequest) _then;

/// Create a copy of GuardianLinkCreateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? guardianId = null,Object? relationship = null,Object? isPrimary = null,Object? additionalProperties = null,}) {
  return _then(GuardianLinkCreateRequest(
guardianId: null == guardianId ? _self.guardianId : guardianId // ignore: cast_nullable_to_non_nullable
as String,relationship: null == relationship ? _self.relationship : relationship // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [GuardianLinkCreateRequest].
extension GuardianLinkCreateRequestPatterns on GuardianLinkCreateRequest {
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
