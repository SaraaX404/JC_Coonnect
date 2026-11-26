// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ActivityEntry {


/// Create a copy of ActivityEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityEntryCopyWith<ActivityEntry> get copyWith => _$ActivityEntryCopyWithImpl<ActivityEntry>(this as ActivityEntry, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ActivityEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityEntry&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.action, _this.action) || other.action == _this.action)&&(identical(other.subjectType, _this.subjectType) || other.subjectType == _this.subjectType)&&(identical(other.subjectId, _this.subjectId) || other.subjectId == _this.subjectId)&&const DeepCollectionEquality().equals(other.changes, _this.changes)&&(identical(other.actor, _this.actor) || other.actor == _this.actor)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as ActivityEntry;
  return Object.hash(runtimeType,_this.id,_this.action,_this.subjectType,_this.subjectId,const DeepCollectionEquality().hash(_this.changes),_this.actor,_this.createdAt,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as ActivityEntry;
  return 'ActivityEntry(id: ${_this.id}, action: ${_this.action}, subjectType: ${_this.subjectType}, subjectId: ${_this.subjectId}, changes: ${_this.changes}, actor: ${_this.actor}, createdAt: ${_this.createdAt}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $ActivityEntryCopyWith<$Res>  {
  factory $ActivityEntryCopyWith(ActivityEntry value, $Res Function(ActivityEntry) _then) = _$ActivityEntryCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) String id,@JsonKey(required: true, disallowNullValue: true) String action,@JsonKey(name: "subject_type", required: true, disallowNullValue: true) String subjectType,@JsonKey(name: "subject_id", required: true, disallowNullValue: true) String subjectId,@JsonKey(required: true) Object? changes,@JsonKey(required: true) MemberRef? actor,@JsonKey(name: "created_at", required: true, disallowNullValue: true, fromJson: ActivityEntry._read_createdAt, toJson: ActivityEntry._write_createdAt) DateTime createdAt,@JsonKey(readValue: ActivityEntry._extras, fromJson: ActivityEntry._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$MemberRefCopyWith<$Res>? get actor;

}
/// @nodoc
class _$ActivityEntryCopyWithImpl<$Res>
    implements $ActivityEntryCopyWith<$Res> {
  _$ActivityEntryCopyWithImpl(this._self, this._then);

  final ActivityEntry _self;
  final $Res Function(ActivityEntry) _then;

/// Create a copy of ActivityEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? action = null,Object? subjectType = null,Object? subjectId = null,Object? changes = freezed,Object? actor = freezed,Object? createdAt = null,Object? additionalProperties = null,}) {
  return _then(ActivityEntry(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,subjectType: null == subjectType ? _self.subjectType : subjectType // ignore: cast_nullable_to_non_nullable
as String,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,changes: freezed == changes ? _self.changes : changes ,actor: freezed == actor ? _self.actor : actor // ignore: cast_nullable_to_non_nullable
as MemberRef?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of ActivityEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberRefCopyWith<$Res>? get actor {
    if (_self.actor == null) {
    return null;
  }

  return $MemberRefCopyWith<$Res>(_self.actor!, (value) {
    return _then(_self.copyWith(actor: value));
  });
}
}


/// Adds pattern-matching-related methods to [ActivityEntry].
extension ActivityEntryPatterns on ActivityEntry {
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
