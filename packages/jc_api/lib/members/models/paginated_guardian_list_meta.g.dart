// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_guardian_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedGuardianListMeta _$PaginatedGuardianListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedGuardianListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedGuardianListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedGuardianListMeta._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedGuardianListMeta._readExtras(
            PaginatedGuardianListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedGuardianListMetaToJson(
  PaginatedGuardianListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedGuardianListMeta._write_counts(instance.counts),
};
