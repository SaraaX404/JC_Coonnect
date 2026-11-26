// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_result_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImportResultEnvelope _$ImportResultEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return ImportResultEnvelope(
    data: ImportResult.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        ImportResultEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : ImportResultEnvelope._readExtras(
            ImportResultEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$ImportResultEnvelopeToJson(
  ImportResultEnvelope instance,
) => <String, dynamic>{
  'data': instance.data.toJson(),
  'error': ?instance.error,
  'meta': ?instance.meta,
};
