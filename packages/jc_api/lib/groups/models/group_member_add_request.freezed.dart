// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_member_add_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GroupMemberAddRequest {


/// Create a copy of GroupMemberAddRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupMemberAddRequestCopyWith<GroupMemberAddRequest> get copyWith => _$GroupMemberAddRequestCopyWithImpl<GroupMemberAddRequest>(this as GroupMemberAddRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GroupMemberAddRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupMemberAddRequest&&(identical(other.memberId, _this.memberId) || other.memberId == _this.memberId)&&(identical(other.position, _this.position) || other.position == _this.position)&&(identical(other.isManager, _this.isManager) || other.isManager == _this.isManager)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as GroupMemberAddRequest;
  return Object.hash(runtimeType,_this.memberId,_this.position,_this.isManager,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as GroupMemberAddRequest;
  return 'GroupMemberAddRequest(memberId: ${_this.memberId}, position: ${_this.position}, isManager: ${_this.isManager}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $GroupMemberAddRequestCopyWith<$Res>  {
  factory $GroupMemberAddRequestCopyWith(GroupMemberAddRequest value, $Res Function(GroupMemberAddRequest) _then) = _$GroupMemberAddRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "member_id", required: true, disallowNullValue: true) String memberId,@JsonKey(disallowNullValue: true, includeIfNull: false) String? position,@JsonKey(name: "is_manager", disallowNullValue: true, readValue: GroupMemberAddRequest._presentValue, fromJson: GroupMemberAddRequest._read_isManager, toJson: GroupMemberAddRequest._write_isManager) bool isManager,@JsonKey(readValue: GroupMemberAddRequest._extras, fromJson: GroupMemberAddRequest._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$GroupMemberAddRequestCopyWithImpl<$Res>
    implements $GroupMemberAddRequestCopyWith<$Res> {
  _$GroupMemberAddRequestCopyWithImpl(this._self, this._then);

  final GroupMemberAddRequest _self;
  final $Res Function(GroupMemberAddRequest) _then;

/// Create a copy of GroupMemberAddRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? memberId = null,Object? position = freezed,Object? isManager = null,Object? additionalProperties = null,}) {
  return _then(GroupMemberAddRequest(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as String,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,isManager: null == isManager ? _self.isManager : isManager // ignore: cast_nullable_to_non_nullable
as bool,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupMemberAddRequest].
extension GroupMemberAddRequestPatterns on GroupMemberAddRequest {
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
