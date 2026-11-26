import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/network/api.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/core/utils/show_message.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_heading.dart';
import 'package:jc_connect_app/src/core/widgets/jc_progress.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/core/widgets/jc_summary_card.dart';
import 'package:jc_connect_app/src/features/onboarding/data/sign_up_repository.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/jc_role.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/sign_up_error.dart';
import 'package:material_ui/material_ui.dart';

/// Sign-up last step: submits the application.
class ReviewScreen extends ConsumerStatefulWidget {
  const ReviewScreen({super.key, required this.data});
  final SignUpData data;

  @override
  ConsumerState<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends ConsumerState<ReviewScreen> {
  late final data = widget.data;
  bool busy = false;

  Future<void> _submit() async {
    setState(() => busy = true);
    try {
      data.submittedAt = await ref.read(signUpRepositoryProvider).submit(data);
      // go, not push: the application can't be sent twice.
      if (mounted) context.go(Routes.signUpSubmitted, extra: data);
    } on ApiException catch (e) {
      if (!mounted) return;
      final l10n = context.l10n;
      switch (e) {
        case ApiException(status: 409, code: 'phone_exists'):
          showMessage(context, l10n.reviewPhoneTaken);
        case ApiException(status: 409):
          showMessage(context, l10n.accountEmailTaken);
        case ApiException(status: 400):
          showMessage(context, l10n.reviewNotAccepted);
        default:
          showSignUpError(context, e, data);
      }
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  Map<String, String> _roleDetails(AppLocalizations l10n) =>
      switch (data.role) {
        JcRole.student => {
          l10n.commonStudentId: data.studentId,
          l10n.commonGrade: data.grade?.name ?? '',
          l10n.commonClass: data.schoolClass?.name ?? '',
          l10n.commonAcademicYear: data.academicYear,
          l10n.commonAcademicTrack: data.academicTrack?.name ?? '',
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
          l10n.commonHouse: data.house?.name ?? '',
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
          enabled: !busy,
          onPressed: () => unawaited(_submit()),
        ),
      ],
    ),
  );
}
