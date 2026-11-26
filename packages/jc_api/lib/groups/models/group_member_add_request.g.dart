// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_member_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupMemberAddRequest _$GroupMemberAddRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['member_id'],
    disallowNullValues: const ['member_id', 'position', 'is_manager'],
  );
  return GroupMemberAddRequest(
    memberId: json['member_id'] as String,
    position: json['position'] as String?,
    isManager: GroupMemberAddRequest._presentValue(json, 'is_manager') == null
        ? false
        : GroupMemberAddRequest._read_isManager(
            GroupMemberAddRequest._presentValue(json, 'is_manager') as Object,
          ),
    additionalProperties:
        GroupMemberAddRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : GroupMemberAddRequest._readExtras(
            GroupMemberAddRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$GroupMemberAddRequestToJson(
  GroupMemberAddRequest instance,
) => <String, dynamic>{
  'member_id': instance.memberId,
  'position': ?instance.position,
  'is_manager': ?GroupMemberAddRequest._write_isManager(instance.isManager),
};
