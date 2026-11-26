// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_staff_class_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedStaffClassListMeta _$PaginatedStaffClassListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedStaffClassListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedStaffClassListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedStaffClassListMeta._extras(json, 'additionalProperties') ==
            null
        ? const {}
        : PaginatedStaffClassListMeta._readExtras(
            PaginatedStaffClassListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedStaffClassListMetaToJson(
  PaginatedStaffClassListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedStaffClassListMeta._write_counts(instance.counts),
};
