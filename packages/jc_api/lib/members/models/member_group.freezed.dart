// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MemberGroup {


/// Create a copy of MemberGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberGroupCopyWith<MemberGroup> get copyWith => _$MemberGroupCopyWithImpl<MemberGroup>(this as MemberGroup, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MemberGroup;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberGroup&&(identical(other.group, _this.group) || other.group == _this.group)&&(identical(other.kind, _this.kind) || other.kind == _this.kind)&&(identical(other.position, _this.position) || other.position == _this.position)&&(identical(other.isManager, _this.isManager) || other.isManager == _this.isManager)&&(identical(other.joinedAt, _this.joinedAt) || other.joinedAt == _this.joinedAt)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as MemberGroup;
  return Object.hash(runtimeType,_this.group,_this.kind,_this.position,_this.isManager,_this.joinedAt,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as MemberGroup;
  return 'MemberGroup(group: ${_this.group}, kind: ${_this.kind}, position: ${_this.position}, isManager: ${_this.isManager}, joinedAt: ${_this.joinedAt}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $MemberGroupCopyWith<$Res>  {
  factory $MemberGroupCopyWith(MemberGroup value, $Res Function(MemberGroup) _then) = _$MemberGroupCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) Ref group,@JsonKey(required: true, disallowNullValue: true) String kind,@JsonKey(required: true, disallowNullValue: true) String position,@JsonKey(name: "is_manager", required: true, disallowNullValue: true) bool isManager,@JsonKey(name: "joined_at", required: true, disallowNullValue: true, fromJson: MemberGroup._read_joinedAt, toJson: MemberGroup._write_joinedAt) DateTime joinedAt,@JsonKey(readValue: MemberGroup._extras, fromJson: MemberGroup._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$RefCopyWith<$Res> get group;

}
/// @nodoc
class _$MemberGroupCopyWithImpl<$Res>
    implements $MemberGroupCopyWith<$Res> {
  _$MemberGroupCopyWithImpl(this._self, this._then);

  final MemberGroup _self;
  final $Res Function(MemberGroup) _then;

/// Create a copy of MemberGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? group = null,Object? kind = null,Object? position = null,Object? isManager = null,Object? joinedAt = null,Object? additionalProperties = null,}) {
  return _then(MemberGroup(
group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as Ref,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,isManager: null == isManager ? _self.isManager : isManager // ignore: cast_nullable_to_non_nullable
as bool,joinedAt: null == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of MemberGroup
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefCopyWith<$Res> get group {
  
  return $RefCopyWith<$Res>(_self.group, (value) {
    return _then(_self.copyWith(group: value));
  });
}
}


/// Adds pattern-matching-related methods to [MemberGroup].
extension MemberGroupPatterns on MemberGroup {
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
