import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jc_api/jc_api.dart' show ClassOption, Options2;
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/network/api.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/features/onboarding/data/sign_up_repository.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/sign_up_error.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_select.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/role_details_scaffold.dart';
import 'package:material_ui/material_ui.dart';

/// Student sign-up step 2. Continue checks the ID against the school's
/// register.
class StudentDetailsFlowScreen extends ConsumerStatefulWidget {
  const StudentDetailsFlowScreen({super.key, required this.data});
  final SignUpData data;

  @override
  ConsumerState<StudentDetailsFlowScreen> createState() =>
      _StudentDetailsFlowScreenState();
}

class _StudentDetailsFlowScreenState
    extends ConsumerState<StudentDetailsFlowScreen> {
  late final data = widget.data;
  late final studentId = TextEditingController(text: data.studentId);
  late final dateOfBirth = TextEditingController(text: data.dateOfBirth);
  late final address = TextEditingController(text: data.address);
  bool busy = false;

  /// The ID the register didn't have.
  String? unknownId;

  Options2? get _options => data.options;

  /// Classes are in the current academic year, so it is the only choice.
  late String academicYear = _options?.currentYear?.name ?? '';

  List<ClassOption> get _classes => [
    for (final c in _options?.classes ?? const <ClassOption>[])
      if (c.gradeId == data.grade?.id) c,
  ];

  bool get _dateInvalid =>
      dateOfBirth.text.trim().isNotEmpty &&
      SignUpData.isoDate(dateOfBirth.text) == null;

  bool get canContinue =>
      studentId.text.trim().isNotEmpty &&
      studentId.text.trim() != unknownId &&
      data.schoolClass != null &&
      (data.academicTrack != null ||
          (_options?.academicTracks.isEmpty ?? true)) &&
      dateOfBirth.text.trim().isNotEmpty &&
      !_dateInvalid &&
      address.text.trim().isNotEmpty;

  @override
  void initState() {
    super.initState();
    for (final controller in [studentId, dateOfBirth, address]) {
      controller.addListener(_refresh);
    }
  }

  void _refresh() => setState(() {});

  @override
  void dispose() {
    for (final controller in [studentId, dateOfBirth, address]) {
      controller.removeListener(_refresh);
      controller.dispose();
    }
    super.dispose();
  }

  Future<void> _continue() async {
    final id = studentId.text.trim();
    setState(() => busy = true);
    try {
      final found = await ref
          .read(signUpRepositoryProvider)
          .checkStudent(data.signupToken, number: id);
      if (!mounted) return;
      if (!found) {
        setState(() => unknownId = id);
        return;
      }
      data
        ..studentId = id
        ..academicYear = academicYear
        ..dateOfBirth = dateOfBirth.text.trim()
        ..address = address.text.trim();
      unawaited(context.push(Routes.signUpGuardians, extra: data));
    } on ApiException catch (e) {
      if (mounted) showSignUpError(context, e, data);
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final options = _options;
    return RoleDetailsScaffold(
      progress: 2,
      label: l10n.commonYourDetails,
      title: l10n.studentHeading,
      description: l10n.studentDescription,
      enabled: canContinue && !busy,
      onContinue: () => unawaited(_continue()),
      children: [
        JcInput(
          label: l10n.commonStudentId,
          hint: l10n.studentIdHint,
          controller: studentId,
          helper: l10n.studentIdHelp,
          errorText: studentId.text.trim() == unknownId
              ? l10n.studentIdNotFound
              : null,
        ),
        JcSelect(
          label: l10n.commonGrade,
          hint: l10n.studentSelectGrade,
          value: data.grade?.name,
          options: [...?options?.grades.map((item) => item.name)],
          onSelected: (name) => setState(() {
            data
              ..grade = options!.grades.firstWhere((g) => g.name == name)
              ..schoolClass = null;
          }),
        ),
        JcSelect(
          label: l10n.commonClass,
          hint: l10n.studentSelectClass,
          value: data.schoolClass?.name,
          options: [for (final c in _classes) c.name],
          onSelected: (name) => setState(
            () => data.schoolClass = _classes.firstWhere((c) => c.name == name),
          ),
        ),
        JcSelect(
          label: l10n.commonAcademicYear,
          hint: l10n.studentSelectAcademicYear,
          value: academicYear,
          options: [?options?.currentYear?.name],
          onSelected: (value) => setState(() => academicYear = value),
        ),
        JcSelect(
          label: l10n.commonAcademicTrack,
          hint: l10n.studentSelectAcademicTrack,
          value: data.academicTrack?.name,
          options: [...?options?.academicTracks.map((item) => item.name)],
          onSelected: (name) => setState(
            () => data.academicTrack = options!.academicTracks.firstWhere(
              (t) => t.name == name,
            ),
          ),
        ),
        JcInput(
          label: l10n.commonDateOfBirth,
          hint: l10n.studentDateOfBirthHint,
          controller: dateOfBirth,
          keyboardType: TextInputType.datetime,
          errorText: _dateInvalid ? l10n.studentDateOfBirthInvalid : null,
        ),
        JcInput(
          label: l10n.commonAddress,
          hint: l10n.commonAddressHint,
          controller: address,
        ),
      ],
    );
  }
}
