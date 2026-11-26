// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_linked_student_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedLinkedStudentListMeta _$PaginatedLinkedStudentListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedLinkedStudentListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedLinkedStudentListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedLinkedStudentListMeta._extras(json, 'additionalProperties') ==
            null
        ? const {}
        : PaginatedLinkedStudentListMeta._readExtras(
            PaginatedLinkedStudentListMeta._extras(
              json,
              'additionalProperties',
            ),
          ),
  );
}

Map<String, dynamic> _$PaginatedLinkedStudentListMetaToJson(
  PaginatedLinkedStudentListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedLinkedStudentListMeta._write_counts(instance.counts),
};
