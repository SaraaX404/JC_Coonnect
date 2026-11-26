import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/features/onboarding/data/mock_onboarding.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/show_message.dart';
import 'package:jc_connect_app/src/core/widgets/jc_heading.dart';
import 'package:jc_connect_app/src/core/widgets/jc_logo.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_timeline_row.dart';
import 'package:material_ui/material_ui.dart';

class SubmittedScreen extends StatelessWidget {
  const SubmittedScreen({super.key});

  @override
  Widget build(BuildContext context) => JcScaffold(
    showBack: false,
    child: ListView(
      padding: const EdgeInsets.fromLTRB(16, 64, 16, 32),
      children: [
        const Center(child: JcLogo()),
        const SizedBox(height: 24),
        JcHeading(
          align: TextAlign.center,
          title: context.l10n.submittedHeading,
          description: context.l10n.submittedDescription,
        ),
        const SizedBox(height: 32),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: JcColors.border),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      context.l10n.submittedAccountStatus,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      context.l10n.commonStepOfTotal(2, 3),
                      style: JcTextStyles.small,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                JcTimelineRow(
                  icon: Icons.check,
                  color: Colors.green,
                  title: context.l10n.submittedStepSubmitted,
                  meta: mockSubmittedAt,
                  badge: context.l10n.submittedDone,
                ),
                JcTimelineRow(
                  icon: Icons.circle,
                  color: const Color(0xFFFFC400),
                  title: context.l10n.submittedStepReview,
                  meta: context.l10n.submittedReviewTime,
                  badge: context.l10n.submittedInProgress,
                ),
                JcTimelineRow(
                  icon: Icons.lock_outline,
                  color: JcColors.muted,
                  title: context.l10n.submittedStepReady,
                  meta: context.l10n.submittedReadyDescription,
                  badge: context.l10n.submittedUpcoming,
                  last: true,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: JcColors.border),
          ),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: JcColors.primary,
              child: Icon(Icons.mail_outline, color: Colors.white),
            ),
            title: Text(
              context.l10n.submittedKeepPosted,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              context.l10n.submittedKeepPostedDescription,
            ),
          ),
        ),
        const SizedBox(height: 90),
        Center(
          child: TextButton.icon(
            onPressed: () =>
                showMessage(context, context.l10n.submittedSupportMessage),
            icon: const Icon(Icons.mail_outline, color: JcColors.text),
            label: Text(
              context.l10n.submittedContactSupport,
              style: const TextStyle(color: JcColors.text),
            ),
          ),
        ),
      ],
    ),
  );
}
