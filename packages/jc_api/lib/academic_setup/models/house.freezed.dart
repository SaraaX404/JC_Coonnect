// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'house.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$House {


/// Create a copy of House
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HouseCopyWith<House> get copyWith => _$HouseCopyWithImpl<House>(this as House, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as House;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is House&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.colour, _this.colour) || other.colour == _this.colour)&&(identical(other.motto, _this.motto) || other.motto == _this.motto)&&(identical(other.captain, _this.captain) || other.captain == _this.captain)&&(identical(other.houseMaster, _this.houseMaster) || other.houseMaster == _this.houseMaster)&&(identical(other.memberCount, _this.memberCount) || other.memberCount == _this.memberCount)&&(identical(other.pointsTotal, _this.pointsTotal) || other.pointsTotal == _this.pointsTotal)&&(identical(other.archivedAt, _this.archivedAt) || other.archivedAt == _this.archivedAt)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as House;
  return Object.hash(runtimeType,_this.id,_this.name,_this.colour,_this.motto,_this.captain,_this.houseMaster,_this.memberCount,_this.pointsTotal,_this.archivedAt,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as House;
  return 'House(id: ${_this.id}, name: ${_this.name}, colour: ${_this.colour}, motto: ${_this.motto}, captain: ${_this.captain}, houseMaster: ${_this.houseMaster}, memberCount: ${_this.memberCount}, pointsTotal: ${_this.pointsTotal}, archivedAt: ${_this.archivedAt}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $HouseCopyWith<$Res>  {
  factory $HouseCopyWith(House value, $Res Function(House) _then) = _$HouseCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) String id,@JsonKey(required: true, disallowNullValue: true) String name,@JsonKey(required: true, disallowNullValue: true) String colour,@JsonKey(required: true, disallowNullValue: true) String motto,@JsonKey(required: true) MemberRef? captain,@JsonKey(name: "house_master", required: true) MemberRef? houseMaster,@JsonKey(name: "member_count", required: true, disallowNullValue: true, fromJson: House._read_memberCount, toJson: House._write_memberCount) int memberCount,@JsonKey(name: "points_total", required: true, disallowNullValue: true, fromJson: House._read_pointsTotal, toJson: House._write_pointsTotal) int pointsTotal,@JsonKey(name: "archived_at", required: true, fromJson: House._read_archivedAt, toJson: House._write_archivedAt) DateTime? archivedAt,@JsonKey(readValue: House._extras, fromJson: House._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$MemberRefCopyWith<$Res>? get captain;$MemberRefCopyWith<$Res>? get houseMaster;

}
/// @nodoc
class _$HouseCopyWithImpl<$Res>
    implements $HouseCopyWith<$Res> {
  _$HouseCopyWithImpl(this._self, this._then);

  final House _self;
  final $Res Function(House) _then;

/// Create a copy of House
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? colour = null,Object? motto = null,Object? captain = freezed,Object? houseMaster = freezed,Object? memberCount = null,Object? pointsTotal = null,Object? archivedAt = freezed,Object? additionalProperties = null,}) {
  return _then(House(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,colour: null == colour ? _self.colour : colour // ignore: cast_nullable_to_non_nullable
as String,motto: null == motto ? _self.motto : motto // ignore: cast_nullable_to_non_nullable
as String,captain: freezed == captain ? _self.captain : captain // ignore: cast_nullable_to_non_nullable
as MemberRef?,houseMaster: freezed == houseMaster ? _self.houseMaster : houseMaster // ignore: cast_nullable_to_non_nullable
as MemberRef?,memberCount: null == memberCount ? _self.memberCount : memberCount // ignore: cast_nullable_to_non_nullable
as int,pointsTotal: null == pointsTotal ? _self.pointsTotal : pointsTotal // ignore: cast_nullable_to_non_nullable
as int,archivedAt: freezed == archivedAt ? _self.archivedAt : archivedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of House
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberRefCopyWith<$Res>? get captain {
    if (_self.captain == null) {
    return null;
  }

  return $MemberRefCopyWith<$Res>(_self.captain!, (value) {
    return _then(_self.copyWith(captain: value));
  });
}/// Create a copy of House
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberRefCopyWith<$Res>? get houseMaster {
    if (_self.houseMaster == null) {
    return null;
  }

  return $MemberRefCopyWith<$Res>(_self.houseMaster!, (value) {
    return _then(_self.copyWith(houseMaster: value));
  });
}
}


/// Adds pattern-matching-related methods to [House].
extension HousePatterns on House {
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
