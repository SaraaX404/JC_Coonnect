// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_member_group_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedMemberGroupList _$PaginatedMemberGroupListFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedMemberGroupList(
    data: (json['data'] as List<dynamic>)
        .map((e) => MemberGroup.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedMemberGroupListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedMemberGroupListMeta.fromJson(
      json['meta'] as Map<String, dynamic>,
    ),
    additionalProperties:
        PaginatedMemberGroupList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedMemberGroupList._readExtras(
            PaginatedMemberGroupList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedMemberGroupListToJson(
  PaginatedMemberGroupList instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'error': instance.error?.toJson(),
  'meta': instance.meta.toJson(),
};
