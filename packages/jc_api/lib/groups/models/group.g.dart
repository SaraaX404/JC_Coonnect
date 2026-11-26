// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Group _$GroupFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'name',
      'kind',
      'description',
      'member_count',
      'manager_count',
      'archived_at',
    ],
    disallowNullValues: const [
      'id',
      'name',
      'kind',
      'description',
      'member_count',
      'manager_count',
    ],
  );
  return Group(
    id: json['id'] as String,
    name: json['name'] as String,
    kind: Group._read_kind(json['kind']),
    description: json['description'] as String,
    memberCount: Group._read_memberCount(json['member_count']),
    managerCount: Group._read_managerCount(json['manager_count']),
    archivedAt: Group._read_archivedAt(json['archived_at']),
    additionalProperties: Group._extras(json, 'additionalProperties') == null
        ? const {}
        : Group._readExtras(Group._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$GroupToJson(Group instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'kind': ?Group._write_kind(instance.kind),
  'description': instance.description,
  'member_count': ?Group._write_memberCount(instance.memberCount),
  'manager_count': ?Group._write_managerCount(instance.managerCount),
  'archived_at': Group._write_archivedAt(instance.archivedAt),
};
