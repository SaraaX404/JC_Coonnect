// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Track _$TrackFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'name',
      'code',
      'description',
      'is_active',
      'archived_at',
    ],
    disallowNullValues: const [
      'id',
      'name',
      'code',
      'description',
      'is_active',
    ],
  );
  return Track(
    id: json['id'] as String,
    name: json['name'] as String,
    code: json['code'] as String,
    description: json['description'] as String,
    isActive: json['is_active'] as bool,
    archivedAt: Track._read_archivedAt(json['archived_at']),
    additionalProperties: Track._extras(json, 'additionalProperties') == null
        ? const {}
        : Track._readExtras(Track._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$TrackToJson(Track instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'code': instance.code,
  'description': instance.description,
  'is_active': instance.isActive,
  'archived_at': Track._write_archivedAt(instance.archivedAt),
};
