// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupMember _$GroupMemberFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['member', 'position', 'is_manager', 'joined_at'],
    disallowNullValues: const ['member', 'position', 'is_manager', 'joined_at'],
  );
  return GroupMember(
    member: MemberRef.fromJson(json['member'] as Map<String, dynamic>),
    position: json['position'] as String,
    isManager: json['is_manager'] as bool,
    joinedAt: GroupMember._read_joinedAt(json['joined_at']),
    additionalProperties:
        GroupMember._extras(json, 'additionalProperties') == null
        ? const {}
        : GroupMember._readExtras(
            GroupMember._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$GroupMemberToJson(GroupMember instance) =>
    <String, dynamic>{
      'member': instance.member.toJson(),
      'position': instance.position,
      'is_manager': instance.isManager,
      'joined_at': ?GroupMember._write_joinedAt(instance.joinedAt),
    };
