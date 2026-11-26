import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';

import 'dart:async';

import 'package:jc_connect_app/src/features/onboarding/data/mock_onboarding.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_helper.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_select.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/role_details_scaffold.dart';
import 'package:material_ui/material_ui.dart';

class StudentDetailsFlowScreen extends StatefulWidget {
  const StudentDetailsFlowScreen({super.key, required this.data});
  final SignUpData data;

  @override
  State<StudentDetailsFlowScreen> createState() =>
      _StudentDetailsFlowScreenState();
}

class _StudentDetailsFlowScreenState extends State<StudentDetailsFlowScreen> {
  final studentId = TextEditingController();
  final dateOfBirth = TextEditingController();
  final address = TextEditingController();
  String grade = '';
  String className = '';
  String academicYear = '';
  String academicTrack = '';

  bool get canContinue =>
      studentId.text.trim().isNotEmpty &&
      grade.isNotEmpty &&
      className.isNotEmpty &&
      academicYear.isNotEmpty &&
      academicTrack.isNotEmpty &&
      dateOfBirth.text.trim().isNotEmpty &&
      address.text.trim().isNotEmpty;

  @override
  void initState() {
    super.initState();
    for (final controller in [studentId, dateOfBirth, address]) {
      controller.addListener(_refresh);
    }
  }

  void _refresh() => setState(() {});

  void _continue(BuildContext context) {
    widget.data
      ..studentId = studentId.text.trim()
      ..grade = grade
      ..className = className
      ..academicYear = academicYear
      ..academicTrack = academicTrack
      ..dateOfBirth = dateOfBirth.text.trim()
      ..address = address.text.trim();
    unawaited(context.push(Routes.signUpTerms, extra: widget.data));
  }

  @override
  void dispose() {
    for (final controller in [studentId, dateOfBirth, address]) {
      controller.removeListener(_refresh);
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => RoleDetailsScaffold(
    progress: 2,
    label: context.l10n.commonYourDetails,
    title: context.l10n.studentHeading,
    description: context.l10n.studentDescription,
    enabled: canContinue,
    onContinue: () => _continue(context),
    children: [
      JcInput(
        label: context.l10n.commonStudentId,
        hint: context.l10n.studentIdHint,
        controller: studentId,
      ),
      JcHelper(context.l10n.studentIdHelp),
      JcSelect(
        label: context.l10n.commonGrade,
        hint: context.l10n.studentSelectGrade,
        value: grade,
        options: mockGrades,
        onSelected: (value) => setState(() => grade = value),
      ),
      JcSelect(
        label: context.l10n.commonClass,
        hint: context.l10n.studentSelectClass,
        value: className,
        options: mockClasses,
        onSelected: (value) => setState(() => className = value),
      ),
      JcSelect(
        label: context.l10n.commonAcademicYear,
        hint: context.l10n.studentSelectAcademicYear,
        value: academicYear,
        options: mockAcademicYears,
        onSelected: (value) => setState(() => academicYear = value),
      ),
      JcSelect(
        label: context.l10n.commonAcademicTrack,
        hint: context.l10n.studentSelectAcademicTrack,
        value: academicTrack,
        options: mockAcademicTracks,
        onSelected: (value) => setState(() => academicTrack = value),
      ),
      JcInput(
        label: context.l10n.commonDateOfBirth,
        hint: context.l10n.studentDateOfBirthHint,
        controller: dateOfBirth,
        keyboardType: TextInputType.datetime,
      ),
      JcInput(
        label: context.l10n.commonAddress,
        hint: context.l10n.commonAddressHint,
        controller: address,
      ),
    ],
  );
}
