// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_change_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusChangeRequest _$StatusChangeRequestFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['reason', 'note']);
  return StatusChangeRequest(
    reason: json['reason'] as String?,
    note: json['note'] as String?,
    additionalProperties:
        StatusChangeRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : StatusChangeRequest._readExtras(
            StatusChangeRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$StatusChangeRequestToJson(
  StatusChangeRequest instance,
) => <String, dynamic>{'reason': ?instance.reason, 'note': ?instance.note};
