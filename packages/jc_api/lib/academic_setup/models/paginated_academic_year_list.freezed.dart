// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_academic_year_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaginatedAcademicYearList {


/// Create a copy of PaginatedAcademicYearList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedAcademicYearListCopyWith<PaginatedAcademicYearList> get copyWith => _$PaginatedAcademicYearListCopyWithImpl<PaginatedAcademicYearList>(this as PaginatedAcademicYearList, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PaginatedAcademicYearList;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedAcademicYearList&&const DeepCollectionEquality().equals(other.data, _this.data)&&(identical(other.error, _this.error) || other.error == _this.error)&&(identical(other.meta, _this.meta) || other.meta == _this.meta)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as PaginatedAcademicYearList;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.data),_this.error,_this.meta,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as PaginatedAcademicYearList;
  return 'PaginatedAcademicYearList(data: ${_this.data}, error: ${_this.error}, meta: ${_this.meta}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $PaginatedAcademicYearListCopyWith<$Res>  {
  factory $PaginatedAcademicYearListCopyWith(PaginatedAcademicYearList value, $Res Function(PaginatedAcademicYearList) _then) = _$PaginatedAcademicYearListCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) List<AcademicYear> data,@JsonKey(required: true) PaginatedAcademicYearListError? error,@JsonKey(required: true, disallowNullValue: true) PaginatedAcademicYearListMeta meta,@JsonKey(readValue: PaginatedAcademicYearList._extras, fromJson: PaginatedAcademicYearList._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$PaginatedAcademicYearListErrorCopyWith<$Res>? get error;$PaginatedAcademicYearListMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$PaginatedAcademicYearListCopyWithImpl<$Res>
    implements $PaginatedAcademicYearListCopyWith<$Res> {
  _$PaginatedAcademicYearListCopyWithImpl(this._self, this._then);

  final PaginatedAcademicYearList _self;
  final $Res Function(PaginatedAcademicYearList) _then;

/// Create a copy of PaginatedAcademicYearList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? error = freezed,Object? meta = null,Object? additionalProperties = null,}) {
  return _then(PaginatedAcademicYearList(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AcademicYear>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as PaginatedAcademicYearListError?,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginatedAcademicYearListMeta,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of PaginatedAcademicYearList
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedAcademicYearListErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $PaginatedAcademicYearListErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}/// Create a copy of PaginatedAcademicYearList
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedAcademicYearListMetaCopyWith<$Res> get meta {
  
  return $PaginatedAcademicYearListMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaginatedAcademicYearList].
extension PaginatedAcademicYearListPatterns on PaginatedAcademicYearList {
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
