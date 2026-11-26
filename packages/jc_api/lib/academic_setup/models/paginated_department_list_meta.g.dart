// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_department_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedDepartmentListMeta _$PaginatedDepartmentListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedDepartmentListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedDepartmentListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedDepartmentListMeta._extras(json, 'additionalProperties') ==
            null
        ? const {}
        : PaginatedDepartmentListMeta._readExtras(
            PaginatedDepartmentListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedDepartmentListMetaToJson(
  PaginatedDepartmentListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedDepartmentListMeta._write_counts(instance.counts),
};
