// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_codes_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PermissionCodesRequest _$PermissionCodesRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['permissions'],
    disallowNullValues: const ['permissions'],
  );
  return PermissionCodesRequest(
    permissions: (json['permissions'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    additionalProperties:
        PermissionCodesRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : PermissionCodesRequest._readExtras(
            PermissionCodesRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PermissionCodesRequestToJson(
  PermissionCodesRequest instance,
) => <String, dynamic>{'permissions': instance.permissions};
