// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Application _$ApplicationFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['member_type', 'status', 'joined_at'],
    disallowNullValues: const ['member_type', 'status', 'joined_at'],
  );
  return Application(
    memberType: Application._read_memberType(json['member_type']),
    status: Application._read_status(json['status']),
    joinedAt: Application._read_joinedAt(json['joined_at']),
    additionalProperties:
        Application._extras(json, 'additionalProperties') == null
        ? const {}
        : Application._readExtras(
            Application._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$ApplicationToJson(Application instance) =>
    <String, dynamic>{
      'member_type': ?Application._write_memberType(instance.memberType),
      'status': ?Application._write_status(instance.status),
      'joined_at': ?Application._write_joinedAt(instance.joinedAt),
    };
