// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_upload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DocumentUpload {


/// Create a copy of DocumentUpload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentUploadCopyWith<DocumentUpload> get copyWith => _$DocumentUploadCopyWithImpl<DocumentUpload>(this as DocumentUpload, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DocumentUpload;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentUpload&&(identical(other.fileKey, _this.fileKey) || other.fileKey == _this.fileKey)&&(identical(other.upload, _this.upload) || other.upload == _this.upload)&&(identical(other.expiresIn, _this.expiresIn) || other.expiresIn == _this.expiresIn)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as DocumentUpload;
  return Object.hash(runtimeType,_this.fileKey,_this.upload,_this.expiresIn,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as DocumentUpload;
  return 'DocumentUpload(fileKey: ${_this.fileKey}, upload: ${_this.upload}, expiresIn: ${_this.expiresIn}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $DocumentUploadCopyWith<$Res>  {
  factory $DocumentUploadCopyWith(DocumentUpload value, $Res Function(DocumentUpload) _then) = _$DocumentUploadCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "file_key", required: true, disallowNullValue: true) String fileKey,@JsonKey(required: true, disallowNullValue: true) PresignedPost upload,@JsonKey(name: "expires_in", required: true, disallowNullValue: true, fromJson: DocumentUpload._read_expiresIn, toJson: DocumentUpload._write_expiresIn) int expiresIn,@JsonKey(readValue: DocumentUpload._extras, fromJson: DocumentUpload._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$PresignedPostCopyWith<$Res> get upload;

}
/// @nodoc
class _$DocumentUploadCopyWithImpl<$Res>
    implements $DocumentUploadCopyWith<$Res> {
  _$DocumentUploadCopyWithImpl(this._self, this._then);

  final DocumentUpload _self;
  final $Res Function(DocumentUpload) _then;

/// Create a copy of DocumentUpload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fileKey = null,Object? upload = null,Object? expiresIn = null,Object? additionalProperties = null,}) {
  return _then(DocumentUpload(
fileKey: null == fileKey ? _self.fileKey : fileKey // ignore: cast_nullable_to_non_nullable
as String,upload: null == upload ? _self.upload : upload // ignore: cast_nullable_to_non_nullable
as PresignedPost,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of DocumentUpload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresignedPostCopyWith<$Res> get upload {
  
  return $PresignedPostCopyWith<$Res>(_self.upload, (value) {
    return _then(_self.copyWith(upload: value));
  });
}
}


/// Adds pattern-matching-related methods to [DocumentUpload].
extension DocumentUploadPatterns on DocumentUpload {
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
