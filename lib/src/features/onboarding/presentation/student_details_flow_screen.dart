import 'package:jc_connect_app/src/core/utils/navigation.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/terms_screen.dart';
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
    pushScreen(context, TermsScreen(data: widget.data));
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
    label: 'Your details',
    title: 'Student details',
    description:
        'We’ll match this with school records to confirm you’re a JC student.',
    enabled: canContinue,
    onContinue: () => _continue(context),
    children: [
      JcInput(
        label: 'Student ID',
        hint: 'e.g. JC-2026-0000',
        controller: studentId,
      ),
      const JcHelper('You’ll find this on your school ID card.'),
      JcSelect(
        label: 'Grade',
        hint: 'Select your grade',
        value: grade,
        options: const [
          'First Form',
          'Second Form',
          'Third Form',
          'Fourth Form',
          'Lower Sixth',
          'Upper Sixth',
        ],
        onSelected: (value) => setState(() => grade = value),
      ),
      JcSelect(
        label: 'Class',
        hint: 'Select your class',
        value: className,
        options: const ['A', 'B', 'C', 'D', 'E'],
        onSelected: (value) => setState(() => className = value),
      ),
      JcSelect(
        label: 'Academic year',
        hint: 'Select academic year',
        value: academicYear,
        options: const ['2026', '2027', '2028'],
        onSelected: (value) => setState(() => academicYear = value),
      ),
      JcSelect(
        label: 'Academic track',
        hint: 'Select academic track',
        value: academicTrack,
        options: const ['General', 'Sciences', 'Humanities', 'Business'],
        onSelected: (value) => setState(() => academicTrack = value),
      ),
      JcInput(
        label: 'Date of birth',
        hint: 'DD / MM / YYYY',
        controller: dateOfBirth,
        keyboardType: TextInputType.datetime,
      ),
      JcInput(
        label: 'Address',
        hint: 'e.g. 12 Hope Road, Kingston 6',
        controller: address,
      ),
    ],
  );
}
