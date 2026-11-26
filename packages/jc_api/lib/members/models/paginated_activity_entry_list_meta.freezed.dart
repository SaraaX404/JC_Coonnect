// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_activity_entry_list_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaginatedActivityEntryListMeta {


/// Create a copy of PaginatedActivityEntryListMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedActivityEntryListMetaCopyWith<PaginatedActivityEntryListMeta> get copyWith => _$PaginatedActivityEntryListMetaCopyWithImpl<PaginatedActivityEntryListMeta>(this as PaginatedActivityEntryListMeta, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PaginatedActivityEntryListMeta;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedActivityEntryListMeta&&(identical(other.next, _this.next) || other.next == _this.next)&&(identical(other.previous, _this.previous) || other.previous == _this.previous)&&const DeepCollectionEquality().equals(other.counts, _this.counts)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as PaginatedActivityEntryListMeta;
  return Object.hash(runtimeType,_this.next,_this.previous,const DeepCollectionEquality().hash(_this.counts),const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as PaginatedActivityEntryListMeta;
  return 'PaginatedActivityEntryListMeta(next: ${_this.next}, previous: ${_this.previous}, counts: ${_this.counts}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $PaginatedActivityEntryListMetaCopyWith<$Res>  {
  factory $PaginatedActivityEntryListMetaCopyWith(PaginatedActivityEntryListMeta value, $Res Function(PaginatedActivityEntryListMeta) _then) = _$PaginatedActivityEntryListMetaCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) String? next,@JsonKey(includeIfNull: false) String? previous,@JsonKey(disallowNullValue: true, includeIfNull: false, fromJson: PaginatedActivityEntryListMeta._read_counts, toJson: PaginatedActivityEntryListMeta._write_counts) Map<String, int>? counts,@JsonKey(readValue: PaginatedActivityEntryListMeta._extras, fromJson: PaginatedActivityEntryListMeta._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$PaginatedActivityEntryListMetaCopyWithImpl<$Res>
    implements $PaginatedActivityEntryListMetaCopyWith<$Res> {
  _$PaginatedActivityEntryListMetaCopyWithImpl(this._self, this._then);

  final PaginatedActivityEntryListMeta _self;
  final $Res Function(PaginatedActivityEntryListMeta) _then;

/// Create a copy of PaginatedActivityEntryListMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? next = freezed,Object? previous = freezed,Object? counts = freezed,Object? additionalProperties = null,}) {
  return _then(PaginatedActivityEntryListMeta(
next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String?,counts: freezed == counts ? _self.counts : counts // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginatedActivityEntryListMeta].
extension PaginatedActivityEntryListMetaPatterns on PaginatedActivityEntryListMeta {
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
