import 'package:jc_connect_app/src/core/utils/navigation.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_heading.dart';
import 'package:jc_connect_app/src/core/widgets/jc_progress.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/core/widgets/jc_summary_card.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/jc_role.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/submitted_screen.dart';
import 'package:material_ui/material_ui.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key, required this.data});
  final SignUpData data;

  Map<String, String> get roleDetails => switch (data.role) {
    JcRole.student => {
      'Student ID': data.studentId,
      'Grade': data.grade,
      'Class': data.className,
      'Academic year': data.academicYear,
      'Academic track': data.academicTrack,
      'Date of birth': data.dateOfBirth,
      'Address': data.address,
    },
    JcRole.parent => {
      'Relationship': data.relationship,
      'Son': data.sonName,
      'Student ID': data.studentId,
      if (data.anotherSonName.isNotEmpty) 'Another son': data.anotherSonName,
    },
    JcRole.teacher => {
      'Staff ID': data.staffId,
      'School email': data.schoolEmail,
      'Address': data.address,
      'Role': data.teacherRole,
    },
    JcRole.oldBoy => {
      'Graduation year': data.graduationYear,
      'Last grade': data.lastGrade,
      'House': data.house,
      'Former student ID': data.studentId,
      'Proof of attendance': data.proofUploaded ? 'Selected' : 'Not selected',
    },
    null => <String, String>{},
  };

  @override
  Widget build(BuildContext context) => JcScaffold(
    child: ListView(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
      children: [
        const JcProgress(step: 5, total: 5, label: 'Review'),
        const SizedBox(height: 24),
        const JcHeading(
          title: 'Review and submit',
          description: 'Check your details before we send them to the school for approval.',
        ),
        const SizedBox(height: 24),
        JcSummaryCard(
          title: 'Account',
          values: {
            'Full name': data.name,
            'Email': data.email,
            'Phone': data.phone,
            'Role': data.role?.title ?? '',
          },
        ),
        const SizedBox(height: 16),
        JcSummaryCard(
          title: '${data.role?.title ?? 'Member'} details',
          values: {...roleDetails, 'Status': 'Ready for review'},
        ),
        const SizedBox(height: 20),
        JcButton(
          label: 'Submit application',
          onPressed: () => pushScreen(context, const SubmittedScreen()),
        ),
      ],
    ),
  );
}
