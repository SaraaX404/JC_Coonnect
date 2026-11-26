// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_staff_class_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedStaffClassList _$PaginatedStaffClassListFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedStaffClassList(
    data: (json['data'] as List<dynamic>)
        .map((e) => StaffClass.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedStaffClassListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedStaffClassListMeta.fromJson(
      json['meta'] as Map<String, dynamic>,
    ),
    additionalProperties:
        PaginatedStaffClassList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedStaffClassList._readExtras(
            PaginatedStaffClassList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedStaffClassListToJson(
  PaginatedStaffClassList instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'error': instance.error?.toJson(),
  'meta': instance.meta.toJson(),
};
