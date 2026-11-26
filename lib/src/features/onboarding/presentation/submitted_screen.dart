import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/navigation.dart';
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
        const JcHeading(
          align: TextAlign.center,
          title: 'Thanks, we’ve got your details',
          description: 'Your account is being reviewed by the JC admin team.',
        ),
        const SizedBox(height: 32),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: JcColors.border),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Account status',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text('Step 2 of 3', style: JcTextStyles.small),
                  ],
                ),
                SizedBox(height: 20),
                JcTimelineRow(
                  icon: Icons.check,
                  color: Colors.green,
                  title: 'Submitted',
                  meta: 'Nov 03, 2026 · 11:20 AM',
                  badge: 'Done',
                ),
                JcTimelineRow(
                  icon: Icons.circle,
                  color: Color(0xFFFFC400),
                  title: 'Under review',
                  meta: 'Usually 1 to 2 business days',
                  badge: 'In progress',
                ),
                JcTimelineRow(
                  icon: Icons.lock_outline,
                  color: JcColors.muted,
                  title: 'Account ready',
                  meta: 'Full access to JC Connect',
                  badge: 'Upcoming',
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
          child: const ListTile(
            leading: CircleAvatar(
              backgroundColor: JcColors.primary,
              child: Icon(Icons.mail_outline, color: Colors.white),
            ),
            title: Text(
              'We’ll keep you posted',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              'You’ll get an email and a notification as soon as there’s an update.',
            ),
          ),
        ),
        const SizedBox(height: 90),
        Center(
          child: TextButton.icon(
            onPressed: () => showMessage(context, 'Support request started.'),
            icon: const Icon(Icons.mail_outline, color: JcColors.text),
            label: const Text(
              'Contact support',
              style: TextStyle(color: JcColors.text),
            ),
          ),
        ),
      ],
    ),
  );
}
