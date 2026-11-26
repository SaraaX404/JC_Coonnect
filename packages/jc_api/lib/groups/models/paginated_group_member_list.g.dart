// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_group_member_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedGroupMemberList _$PaginatedGroupMemberListFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedGroupMemberList(
    data: (json['data'] as List<dynamic>)
        .map((e) => GroupMember.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedGroupMemberListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedGroupMemberListMeta.fromJson(
      json['meta'] as Map<String, dynamic>,
    ),
    additionalProperties:
        PaginatedGroupMemberList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedGroupMemberList._readExtras(
            PaginatedGroupMemberList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedGroupMemberListToJson(
  PaginatedGroupMemberList instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'error': instance.error?.toJson(),
  'meta': instance.meta.toJson(),
};
