// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepartmentInputRequest _$DepartmentInputRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['name'],
    disallowNullValues: const ['name', 'is_active'],
  );
  return DepartmentInputRequest(
    name: json['name'] as String,
    isActive: DepartmentInputRequest._presentValue(json, 'is_active') == null
        ? true
        : DepartmentInputRequest._read_isActive(
            DepartmentInputRequest._presentValue(json, 'is_active') as Object,
          ),
    additionalProperties:
        DepartmentInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : DepartmentInputRequest._readExtras(
            DepartmentInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$DepartmentInputRequestToJson(
  DepartmentInputRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'is_active': ?DepartmentInputRequest._write_isActive(instance.isActive),
};
