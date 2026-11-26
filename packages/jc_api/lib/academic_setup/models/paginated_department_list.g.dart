// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_department_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedDepartmentList _$PaginatedDepartmentListFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedDepartmentList(
    data: (json['data'] as List<dynamic>)
        .map((e) => Department.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedDepartmentListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedDepartmentListMeta.fromJson(
      json['meta'] as Map<String, dynamic>,
    ),
    additionalProperties:
        PaginatedDepartmentList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedDepartmentList._readExtras(
            PaginatedDepartmentList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedDepartmentListToJson(
  PaginatedDepartmentList instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'error': instance.error?.toJson(),
  'meta': instance.meta.toJson(),
};
