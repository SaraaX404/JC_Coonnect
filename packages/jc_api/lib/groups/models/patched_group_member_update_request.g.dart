// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_group_member_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedGroupMemberUpdateRequest _$PatchedGroupMemberUpdateRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['position', 'is_manager']);
  return PatchedGroupMemberUpdateRequest(
    position: json['position'] as String?,
    isManager: json['is_manager'] as bool?,
    additionalProperties:
        PatchedGroupMemberUpdateRequest._extras(json, 'additionalProperties') ==
            null
        ? const {}
        : PatchedGroupMemberUpdateRequest._readExtras(
            PatchedGroupMemberUpdateRequest._extras(
              json,
              'additionalProperties',
            ),
          ),
  );
}

Map<String, dynamic> _$PatchedGroupMemberUpdateRequestToJson(
  PatchedGroupMemberUpdateRequest instance,
) => <String, dynamic>{
  'position': ?instance.position,
  'is_manager': ?instance.isManager,
};
