// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academic_year.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcademicYear _$AcademicYearFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'name',
      'start_date',
      'end_date',
      'status',
      'terms',
      'class_count',
    ],
    disallowNullValues: const [
      'id',
      'name',
      'start_date',
      'end_date',
      'status',
      'terms',
      'class_count',
    ],
  );
  return AcademicYear(
    id: json['id'] as String,
    name: json['name'] as String,
    startDate: json['start_date'] as String,
    endDate: json['end_date'] as String,
    status: AcademicYear._read_status(json['status']),
    terms: (json['terms'] as List<dynamic>)
        .map((e) => Term.fromJson(e as Map<String, dynamic>))
        .toList(),
    classCount: AcademicYear._read_classCount(json['class_count']),
    additionalProperties:
        AcademicYear._extras(json, 'additionalProperties') == null
        ? const {}
        : AcademicYear._readExtras(
            AcademicYear._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$AcademicYearToJson(AcademicYear instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'status': ?AcademicYear._write_status(instance.status),
      'terms': instance.terms.map((e) => e.toJson()).toList(),
      'class_count': ?AcademicYear._write_classCount(instance.classCount),
    };
