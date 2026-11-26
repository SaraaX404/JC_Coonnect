// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_member_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedMemberList _$PaginatedMemberListFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedMemberList(
    data: (json['data'] as List<dynamic>)
        .map((e) => Member.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedMemberListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedMemberListMeta.fromJson(
      json['meta'] as Map<String, dynamic>,
    ),
    additionalProperties:
        PaginatedMemberList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedMemberList._readExtras(
            PaginatedMemberList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedMemberListToJson(
  PaginatedMemberList instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'error': instance.error?.toJson(),
  'meta': instance.meta.toJson(),
};
