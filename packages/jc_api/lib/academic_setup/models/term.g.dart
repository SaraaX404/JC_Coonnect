// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'term.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Term _$TermFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'term_number', 'name', 'start_date', 'end_date'],
    disallowNullValues: const ['id', 'term_number', 'name'],
  );
  return Term(
    id: json['id'] as String,
    termNumber: Term._read_termNumber(json['term_number']),
    name: json['name'] as String,
    startDate: json['start_date'] as String?,
    endDate: json['end_date'] as String?,
    additionalProperties: Term._extras(json, 'additionalProperties') == null
        ? const {}
        : Term._readExtras(Term._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$TermToJson(Term instance) => <String, dynamic>{
  'id': instance.id,
  'term_number': ?Term._write_termNumber(instance.termNumber),
  'name': instance.name,
  'start_date': instance.startDate,
  'end_date': instance.endDate,
};
