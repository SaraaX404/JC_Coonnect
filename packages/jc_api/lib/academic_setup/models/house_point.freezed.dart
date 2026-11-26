// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'house_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HousePoint {


/// Create a copy of HousePoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HousePointCopyWith<HousePoint> get copyWith => _$HousePointCopyWithImpl<HousePoint>(this as HousePoint, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as HousePoint;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HousePoint&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.points, _this.points) || other.points == _this.points)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.awardedBy, _this.awardedBy) || other.awardedBy == _this.awardedBy)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as HousePoint;
  return Object.hash(runtimeType,_this.id,_this.points,_this.reason,_this.awardedBy,_this.createdAt,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as HousePoint;
  return 'HousePoint(id: ${_this.id}, points: ${_this.points}, reason: ${_this.reason}, awardedBy: ${_this.awardedBy}, createdAt: ${_this.createdAt}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $HousePointCopyWith<$Res>  {
  factory $HousePointCopyWith(HousePoint value, $Res Function(HousePoint) _then) = _$HousePointCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) String id,@JsonKey(required: true, disallowNullValue: true, fromJson: HousePoint._read_points, toJson: HousePoint._write_points) int points,@JsonKey(required: true, disallowNullValue: true) String reason,@JsonKey(name: "awarded_by", required: true) MemberRef? awardedBy,@JsonKey(name: "created_at", required: true, disallowNullValue: true, fromJson: HousePoint._read_createdAt, toJson: HousePoint._write_createdAt) DateTime createdAt,@JsonKey(readValue: HousePoint._extras, fromJson: HousePoint._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$MemberRefCopyWith<$Res>? get awardedBy;

}
/// @nodoc
class _$HousePointCopyWithImpl<$Res>
    implements $HousePointCopyWith<$Res> {
  _$HousePointCopyWithImpl(this._self, this._then);

  final HousePoint _self;
  final $Res Function(HousePoint) _then;

/// Create a copy of HousePoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? points = null,Object? reason = null,Object? awardedBy = freezed,Object? createdAt = null,Object? additionalProperties = null,}) {
  return _then(HousePoint(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,awardedBy: freezed == awardedBy ? _self.awardedBy : awardedBy // ignore: cast_nullable_to_non_nullable
as MemberRef?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of HousePoint
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberRefCopyWith<$Res>? get awardedBy {
    if (_self.awardedBy == null) {
    return null;
  }

  return $MemberRefCopyWith<$Res>(_self.awardedBy!, (value) {
    return _then(_self.copyWith(awardedBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [HousePoint].
extension HousePointPatterns on HousePoint {
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
