// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberGroup _$MemberGroupFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'group',
      'kind',
      'position',
      'is_manager',
      'joined_at',
    ],
    disallowNullValues: const [
      'group',
      'kind',
      'position',
      'is_manager',
      'joined_at',
    ],
  );
  return MemberGroup(
    group: Ref.fromJson(json['group'] as Map<String, dynamic>),
    kind: json['kind'] as String,
    position: json['position'] as String,
    isManager: json['is_manager'] as bool,
    joinedAt: MemberGroup._read_joinedAt(json['joined_at']),
    additionalProperties:
        MemberGroup._extras(json, 'additionalProperties') == null
        ? const {}
        : MemberGroup._readExtras(
            MemberGroup._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$MemberGroupToJson(MemberGroup instance) =>
    <String, dynamic>{
      'group': instance.group.toJson(),
      'kind': instance.kind,
      'position': instance.position,
      'is_manager': instance.isManager,
      'joined_at': ?MemberGroup._write_joinedAt(instance.joinedAt),
    };
