// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_assignment_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedAssignmentListMeta _$PaginatedAssignmentListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedAssignmentListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedAssignmentListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedAssignmentListMeta._extras(json, 'additionalProperties') ==
            null
        ? const {}
        : PaginatedAssignmentListMeta._readExtras(
            PaginatedAssignmentListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedAssignmentListMetaToJson(
  PaginatedAssignmentListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedAssignmentListMeta._write_counts(instance.counts),
};
