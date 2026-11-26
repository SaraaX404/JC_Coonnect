// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Grade _$GradeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'name',
      'code',
      'level',
      'sort_order',
      'is_active',
      'archived_at',
      'class_count',
    ],
    disallowNullValues: const [
      'id',
      'name',
      'code',
      'level',
      'sort_order',
      'is_active',
      'class_count',
    ],
  );
  return Grade(
    id: json['id'] as String,
    name: json['name'] as String,
    code: json['code'] as String,
    level: Grade._read_level(json['level']),
    sortOrder: Grade._read_sortOrder(json['sort_order']),
    isActive: json['is_active'] as bool,
    archivedAt: Grade._read_archivedAt(json['archived_at']),
    classCount: Grade._read_classCount(json['class_count']),
    additionalProperties: Grade._extras(json, 'additionalProperties') == null
        ? const {}
        : Grade._readExtras(Grade._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$GradeToJson(Grade instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'code': instance.code,
  'level': ?Grade._write_level(instance.level),
  'sort_order': ?Grade._write_sortOrder(instance.sortOrder),
  'is_active': instance.isActive,
  'archived_at': Grade._write_archivedAt(instance.archivedAt),
  'class_count': ?Grade._write_classCount(instance.classCount),
};
