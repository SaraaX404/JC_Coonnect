// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_house_input_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PatchedHouseInputRequest {


/// Create a copy of PatchedHouseInputRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedHouseInputRequestCopyWith<PatchedHouseInputRequest> get copyWith => _$PatchedHouseInputRequestCopyWithImpl<PatchedHouseInputRequest>(this as PatchedHouseInputRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PatchedHouseInputRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedHouseInputRequest&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.colour, _this.colour) || other.colour == _this.colour)&&(identical(other.motto, _this.motto) || other.motto == _this.motto)&&(identical(other.captainId, _this.captainId) || other.captainId == _this.captainId)&&(identical(other.houseMasterId, _this.houseMasterId) || other.houseMasterId == _this.houseMasterId)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as PatchedHouseInputRequest;
  return Object.hash(runtimeType,_this.name,_this.colour,_this.motto,_this.captainId,_this.houseMasterId,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as PatchedHouseInputRequest;
  return 'PatchedHouseInputRequest(name: ${_this.name}, colour: ${_this.colour}, motto: ${_this.motto}, captainId: ${_this.captainId}, houseMasterId: ${_this.houseMasterId}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $PatchedHouseInputRequestCopyWith<$Res>  {
  factory $PatchedHouseInputRequestCopyWith(PatchedHouseInputRequest value, $Res Function(PatchedHouseInputRequest) _then) = _$PatchedHouseInputRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(disallowNullValue: true, includeIfNull: false) String? name,@JsonKey(disallowNullValue: true, includeIfNull: false) String? colour,@JsonKey(disallowNullValue: true, includeIfNull: false) String? motto,@JsonKey(name: "captain_id", includeIfNull: false) String? captainId,@JsonKey(name: "house_master_id", includeIfNull: false) String? houseMasterId,@JsonKey(readValue: PatchedHouseInputRequest._extras, fromJson: PatchedHouseInputRequest._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$PatchedHouseInputRequestCopyWithImpl<$Res>
    implements $PatchedHouseInputRequestCopyWith<$Res> {
  _$PatchedHouseInputRequestCopyWithImpl(this._self, this._then);

  final PatchedHouseInputRequest _self;
  final $Res Function(PatchedHouseInputRequest) _then;

/// Create a copy of PatchedHouseInputRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? colour = freezed,Object? motto = freezed,Object? captainId = freezed,Object? houseMasterId = freezed,Object? additionalProperties = null,}) {
  return _then(PatchedHouseInputRequest(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,colour: freezed == colour ? _self.colour : colour // ignore: cast_nullable_to_non_nullable
as String?,motto: freezed == motto ? _self.motto : motto // ignore: cast_nullable_to_non_nullable
as String?,captainId: freezed == captainId ? _self.captainId : captainId // ignore: cast_nullable_to_non_nullable
as String?,houseMasterId: freezed == houseMasterId ? _self.houseMasterId : houseMasterId // ignore: cast_nullable_to_non_nullable
as String?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchedHouseInputRequest].
extension PatchedHouseInputRequestPatterns on PatchedHouseInputRequest {
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
