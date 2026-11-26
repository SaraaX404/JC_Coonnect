// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'right_toggle_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RightToggleRequest _$RightToggleRequestFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['code', 'granted'],
    disallowNullValues: const ['code', 'granted'],
  );
  return RightToggleRequest(
    code: RightToggleRequest._read_code(json['code']),
    granted: json['granted'] as bool,
    additionalProperties:
        RightToggleRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : RightToggleRequest._readExtras(
            RightToggleRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$RightToggleRequestToJson(RightToggleRequest instance) =>
    <String, dynamic>{
      'code': ?RightToggleRequest._write_code(instance.code),
      'granted': instance.granted,
    };
