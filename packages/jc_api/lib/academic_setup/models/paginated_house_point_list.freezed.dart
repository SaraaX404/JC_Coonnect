// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_house_point_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaginatedHousePointList {


/// Create a copy of PaginatedHousePointList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedHousePointListCopyWith<PaginatedHousePointList> get copyWith => _$PaginatedHousePointListCopyWithImpl<PaginatedHousePointList>(this as PaginatedHousePointList, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PaginatedHousePointList;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedHousePointList&&const DeepCollectionEquality().equals(other.data, _this.data)&&(identical(other.error, _this.error) || other.error == _this.error)&&(identical(other.meta, _this.meta) || other.meta == _this.meta)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as PaginatedHousePointList;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.data),_this.error,_this.meta,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as PaginatedHousePointList;
  return 'PaginatedHousePointList(data: ${_this.data}, error: ${_this.error}, meta: ${_this.meta}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $PaginatedHousePointListCopyWith<$Res>  {
  factory $PaginatedHousePointListCopyWith(PaginatedHousePointList value, $Res Function(PaginatedHousePointList) _then) = _$PaginatedHousePointListCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) List<HousePoint> data,@JsonKey(required: true) PaginatedHousePointListError? error,@JsonKey(required: true, disallowNullValue: true) PaginatedHousePointListMeta meta,@JsonKey(readValue: PaginatedHousePointList._extras, fromJson: PaginatedHousePointList._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$PaginatedHousePointListErrorCopyWith<$Res>? get error;$PaginatedHousePointListMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$PaginatedHousePointListCopyWithImpl<$Res>
    implements $PaginatedHousePointListCopyWith<$Res> {
  _$PaginatedHousePointListCopyWithImpl(this._self, this._then);

  final PaginatedHousePointList _self;
  final $Res Function(PaginatedHousePointList) _then;

/// Create a copy of PaginatedHousePointList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? error = freezed,Object? meta = null,Object? additionalProperties = null,}) {
  return _then(PaginatedHousePointList(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<HousePoint>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as PaginatedHousePointListError?,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginatedHousePointListMeta,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of PaginatedHousePointList
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedHousePointListErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $PaginatedHousePointListErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}/// Create a copy of PaginatedHousePointList
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedHousePointListMetaCopyWith<$Res> get meta {
  
  return $PaginatedHousePointListMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaginatedHousePointList].
extension PaginatedHousePointListPatterns on PaginatedHousePointList {
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
