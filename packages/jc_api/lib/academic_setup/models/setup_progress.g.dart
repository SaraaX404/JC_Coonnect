// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setup_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetupProgress _$SetupProgressFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['steps', 'done', 'total'],
    disallowNullValues: const ['steps', 'done', 'total'],
  );
  return SetupProgress(
    steps: SetupSteps.fromJson(json['steps'] as Map<String, dynamic>),
    done: SetupProgress._read_done(json['done']),
    total: SetupProgress._read_total(json['total']),
    additionalProperties:
        SetupProgress._extras(json, 'additionalProperties') == null
        ? const {}
        : SetupProgress._readExtras(
            SetupProgress._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$SetupProgressToJson(SetupProgress instance) =>
    <String, dynamic>{
      'steps': instance.steps.toJson(),
      'done': ?SetupProgress._write_done(instance.done),
      'total': ?SetupProgress._write_total(instance.total),
    };
