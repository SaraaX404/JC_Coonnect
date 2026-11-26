// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_department_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedDepartmentInputRequest _$PatchedDepartmentInputRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['name', 'is_active']);
  return PatchedDepartmentInputRequest(
    name: json['name'] as String?,
    isActive:
        PatchedDepartmentInputRequest._presentValue(json, 'is_active') == null
        ? true
        : PatchedDepartmentInputRequest._read_isActive(
            PatchedDepartmentInputRequest._presentValue(json, 'is_active')
                as Object,
          ),
    additionalProperties:
        PatchedDepartmentInputRequest._extras(json, 'additionalProperties') ==
            null
        ? const {}
        : PatchedDepartmentInputRequest._readExtras(
            PatchedDepartmentInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PatchedDepartmentInputRequestToJson(
  PatchedDepartmentInputRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'is_active': ?PatchedDepartmentInputRequest._write_isActive(
    instance.isActive,
  ),
};
