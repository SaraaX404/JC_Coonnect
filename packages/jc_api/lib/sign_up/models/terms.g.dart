// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Terms _$TermsFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['version', 'published_at', 'document_url'],
    disallowNullValues: const ['version', 'published_at', 'document_url'],
  );
  return Terms(
    version: json['version'] as String,
    publishedAt: Terms._read_publishedAt(json['published_at']),
    documentUrl: json['document_url'] as String,
    additionalProperties: Terms._extras(json, 'additionalProperties') == null
        ? const {}
        : Terms._readExtras(Terms._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$TermsToJson(Terms instance) => <String, dynamic>{
  'version': instance.version,
  'published_at': ?Terms._write_publishedAt(instance.publishedAt),
  'document_url': instance.documentUrl,
};
