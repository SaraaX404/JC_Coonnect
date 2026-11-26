// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_upload_request_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DocumentUploadRequestRequest {


/// Create a copy of DocumentUploadRequestRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentUploadRequestRequestCopyWith<DocumentUploadRequestRequest> get copyWith => _$DocumentUploadRequestRequestCopyWithImpl<DocumentUploadRequestRequest>(this as DocumentUploadRequestRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DocumentUploadRequestRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentUploadRequestRequest&&(identical(other.kind, _this.kind) || other.kind == _this.kind)&&(identical(other.fileName, _this.fileName) || other.fileName == _this.fileName)&&(identical(other.contentType, _this.contentType) || other.contentType == _this.contentType)&&(identical(other.sizeBytes, _this.sizeBytes) || other.sizeBytes == _this.sizeBytes)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as DocumentUploadRequestRequest;
  return Object.hash(runtimeType,_this.kind,_this.fileName,_this.contentType,_this.sizeBytes,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as DocumentUploadRequestRequest;
  return 'DocumentUploadRequestRequest(kind: ${_this.kind}, fileName: ${_this.fileName}, contentType: ${_this.contentType}, sizeBytes: ${_this.sizeBytes}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $DocumentUploadRequestRequestCopyWith<$Res>  {
  factory $DocumentUploadRequestRequestCopyWith(DocumentUploadRequestRequest value, $Res Function(DocumentUploadRequestRequest) _then) = _$DocumentUploadRequestRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true, fromJson: DocumentUploadRequestRequest._read_kind, toJson: DocumentUploadRequestRequest._write_kind) DocumentKindEnum kind,@JsonKey(name: "file_name", required: true, disallowNullValue: true) String fileName,@JsonKey(name: "content_type", required: true, disallowNullValue: true) String contentType,@JsonKey(name: "size_bytes", required: true, disallowNullValue: true, fromJson: DocumentUploadRequestRequest._read_sizeBytes, toJson: DocumentUploadRequestRequest._write_sizeBytes) int sizeBytes,@JsonKey(readValue: DocumentUploadRequestRequest._extras, fromJson: DocumentUploadRequestRequest._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$DocumentUploadRequestRequestCopyWithImpl<$Res>
    implements $DocumentUploadRequestRequestCopyWith<$Res> {
  _$DocumentUploadRequestRequestCopyWithImpl(this._self, this._then);

  final DocumentUploadRequestRequest _self;
  final $Res Function(DocumentUploadRequestRequest) _then;

/// Create a copy of DocumentUploadRequestRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = null,Object? fileName = null,Object? contentType = null,Object? sizeBytes = null,Object? additionalProperties = null,}) {
  return _then(DocumentUploadRequestRequest(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as DocumentKindEnum,fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,sizeBytes: null == sizeBytes ? _self.sizeBytes : sizeBytes // ignore: cast_nullable_to_non_nullable
as int,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [DocumentUploadRequestRequest].
extension DocumentUploadRequestRequestPatterns on DocumentUploadRequestRequest {
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
