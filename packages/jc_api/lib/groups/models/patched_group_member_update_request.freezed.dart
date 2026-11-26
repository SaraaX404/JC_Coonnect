// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_group_member_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PatchedGroupMemberUpdateRequest {


/// Create a copy of PatchedGroupMemberUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedGroupMemberUpdateRequestCopyWith<PatchedGroupMemberUpdateRequest> get copyWith => _$PatchedGroupMemberUpdateRequestCopyWithImpl<PatchedGroupMemberUpdateRequest>(this as PatchedGroupMemberUpdateRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PatchedGroupMemberUpdateRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedGroupMemberUpdateRequest&&(identical(other.position, _this.position) || other.position == _this.position)&&(identical(other.isManager, _this.isManager) || other.isManager == _this.isManager)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as PatchedGroupMemberUpdateRequest;
  return Object.hash(runtimeType,_this.position,_this.isManager,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as PatchedGroupMemberUpdateRequest;
  return 'PatchedGroupMemberUpdateRequest(position: ${_this.position}, isManager: ${_this.isManager}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $PatchedGroupMemberUpdateRequestCopyWith<$Res>  {
  factory $PatchedGroupMemberUpdateRequestCopyWith(PatchedGroupMemberUpdateRequest value, $Res Function(PatchedGroupMemberUpdateRequest) _then) = _$PatchedGroupMemberUpdateRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(disallowNullValue: true, includeIfNull: false) String? position,@JsonKey(name: "is_manager", disallowNullValue: true, includeIfNull: false) bool? isManager,@JsonKey(readValue: PatchedGroupMemberUpdateRequest._extras, fromJson: PatchedGroupMemberUpdateRequest._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$PatchedGroupMemberUpdateRequestCopyWithImpl<$Res>
    implements $PatchedGroupMemberUpdateRequestCopyWith<$Res> {
  _$PatchedGroupMemberUpdateRequestCopyWithImpl(this._self, this._then);

  final PatchedGroupMemberUpdateRequest _self;
  final $Res Function(PatchedGroupMemberUpdateRequest) _then;

/// Create a copy of PatchedGroupMemberUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? position = freezed,Object? isManager = freezed,Object? additionalProperties = null,}) {
  return _then(PatchedGroupMemberUpdateRequest(
position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,isManager: freezed == isManager ? _self.isManager : isManager // ignore: cast_nullable_to_non_nullable
as bool?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchedGroupMemberUpdateRequest].
extension PatchedGroupMemberUpdateRequestPatterns on PatchedGroupMemberUpdateRequest {
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
