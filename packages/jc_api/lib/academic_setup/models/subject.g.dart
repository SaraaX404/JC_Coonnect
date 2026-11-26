// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subject _$SubjectFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'name', 'code', 'archived_at'],
    disallowNullValues: const ['id', 'name', 'code'],
  );
  return Subject(
    id: json['id'] as String,
    name: json['name'] as String,
    code: json['code'] as String,
    archivedAt: Subject._read_archivedAt(json['archived_at']),
    additionalProperties: Subject._extras(json, 'additionalProperties') == null
        ? const {}
        : Subject._readExtras(Subject._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$SubjectToJson(Subject instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'code': instance.code,
  'archived_at': Subject._write_archivedAt(instance.archivedAt),
};
