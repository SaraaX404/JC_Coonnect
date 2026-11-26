// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_invitation_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedInvitationList _$PaginatedInvitationListFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'error', 'meta'],
    disallowNullValues: const ['data', 'meta'],
  );
  return PaginatedInvitationList(
    data: (json['data'] as List<dynamic>)
        .map((e) => Invitation.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : PaginatedInvitationListError.fromJson(
            json['error'] as Map<String, dynamic>,
          ),
    meta: PaginatedInvitationListMeta.fromJson(
      json['meta'] as Map<String, dynamic>,
    ),
    additionalProperties:
        PaginatedInvitationList._extras(json, 'additionalProperties') == null
        ? const {}
        : PaginatedInvitationList._readExtras(
            PaginatedInvitationList._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PaginatedInvitationListToJson(
  PaginatedInvitationList instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'error': instance.error?.toJson(),
  'meta': instance.meta.toJson(),
};
