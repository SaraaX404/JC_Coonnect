// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_invitation_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedInvitationListMeta _$PaginatedInvitationListMetaFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['counts']);
  return PaginatedInvitationListMeta(
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    counts: PaginatedInvitationListMeta._read_counts(json['counts']),
    additionalProperties:
        PaginatedInvitationListMeta._extras(json, 'additionalProperties') ==
            null
        ? const {}
        : PaginatedInvitationListMeta._readExtras(
            PaginatedInvitationListMeta._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedInvitationListMetaToJson(
  PaginatedInvitationListMeta instance,
) => <String, dynamic>{
  'next': ?instance.next,
  'previous': ?instance.previous,
  'counts': ?PaginatedInvitationListMeta._write_counts(instance.counts),
};
