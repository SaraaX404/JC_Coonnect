import 'package:jc_connect_app/l10n/l10n.dart';
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

  Map<String, String> _roleDetails(AppLocalizations l10n) =>
      switch (data.role) {
        JcRole.student => {
          l10n.commonStudentId: data.studentId,
          l10n.commonGrade: data.grade,
          l10n.commonClass: data.className,
          l10n.commonAcademicYear: data.academicYear,
          l10n.commonAcademicTrack: data.academicTrack,
          l10n.commonDateOfBirth: data.dateOfBirth,
          l10n.commonAddress: data.address,
        },
        JcRole.parent => {
          l10n.commonRelationship: data.relationship,
          l10n.reviewSon: data.sonName,
          l10n.commonStudentId: data.studentId,
          if (data.anotherSonName.isNotEmpty)
            l10n.reviewAnotherSon: data.anotherSonName,
        },
        JcRole.teacher => {
          l10n.commonStaffId: data.staffId,
          l10n.commonSchoolEmail: data.schoolEmail,
          l10n.commonAddress: data.address,
          l10n.reviewRole: data.teacherRole,
        },
        JcRole.oldBoy => {
          l10n.commonGraduationYear: data.graduationYear,
          l10n.reviewLastGrade: data.lastGrade,
          l10n.commonHouse: data.house,
          l10n.reviewFormerStudentId: data.studentId,
          l10n.commonProofOfAttendance: data.proofUploaded
              ? l10n.reviewSelected
              : l10n.reviewNotSelected,
        },
        null => <String, String>{},
      };

  @override
  Widget build(BuildContext context) => JcScaffold(
    child: ListView(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
      children: [
        JcProgress(step: 5, total: 5, label: context.l10n.reviewTitle),
        const SizedBox(height: 24),
        JcHeading(
          title: context.l10n.reviewHeading,
          description: context.l10n.reviewDescription,
        ),
        const SizedBox(height: 24),
        JcSummaryCard(
          title: context.l10n.reviewAccount,
          values: {
            context.l10n.commonFullName: data.name,
            context.l10n.commonEmailLabel: data.email,
            context.l10n.reviewPhone: data.phone,
            context.l10n.reviewRole: data.role?.title(context.l10n) ?? '',
          },
        ),
        const SizedBox(height: 16),
        JcSummaryCard(
          title: context.l10n.reviewRoleDetails(
            data.role?.title(context.l10n) ?? context.l10n.reviewMember,
          ),
          values: {
            ..._roleDetails(context.l10n),
            context.l10n.reviewStatus: context.l10n.reviewReady,
          },
        ),
        const SizedBox(height: 20),
        JcButton(
          label: context.l10n.reviewSubmit,
          onPressed: () => pushScreen(context, const SubmittedScreen()),
        ),
      ],
    ),
  );
}
