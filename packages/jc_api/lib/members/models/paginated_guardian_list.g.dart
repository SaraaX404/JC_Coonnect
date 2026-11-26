// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_guardian_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedGuardianList _$PaginatedGuardianListFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedGuardianList(
    data: (json['data'] as List<dynamic>)
        .map((e) => Guardian.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedGuardianListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedGuardianListMeta.fromJson(
      json['meta'] as Map<String, dynamic>,
    ),
    additionalProperties:
        PaginatedGuardianList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedGuardianList._readExtras(
            PaginatedGuardianList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedGuardianListToJson(
  PaginatedGuardianList instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'error': instance.error?.toJson(),
  'meta': instance.meta.toJson(),
};
