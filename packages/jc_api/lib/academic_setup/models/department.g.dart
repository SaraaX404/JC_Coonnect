// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Department _$DepartmentFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'name', 'is_active', 'archived_at'],
    disallowNullValues: const ['id', 'name', 'is_active'],
  );
  return Department(
    id: json['id'] as String,
    name: json['name'] as String,
    isActive: json['is_active'] as bool,
    archivedAt: Department._read_archivedAt(json['archived_at']),
    additionalProperties:
        Department._extras(json, 'additionalProperties') == null
        ? const {}
        : Department._readExtras(
            Department._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$DepartmentToJson(Department instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_active': instance.isActive,
      'archived_at': Department._write_archivedAt(instance.archivedAt),
    };
