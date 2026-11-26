// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presigned_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PresignedPost _$PresignedPostFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['url', 'fields'],
    disallowNullValues: const ['url', 'fields'],
  );
  return PresignedPost(
    url: json['url'] as String,
    fields: Map<String, String>.from(json['fields'] as Map),
    additionalProperties:
        PresignedPost._extras(json, 'additionalProperties') == null
        ? const {}
        : PresignedPost._readExtras(
            PresignedPost._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PresignedPostToJson(PresignedPost instance) =>
    <String, dynamic>{'url': instance.url, 'fields': instance.fields};
