import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/navigation.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_heading.dart';
import 'package:jc_connect_app/src/core/widgets/jc_progress.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/review_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_term.dart';
import 'package:material_ui/material_ui.dart';

class TermsScreen extends StatefulWidget {
  const TermsScreen({super.key, required this.data});
  final SignUpData data;

  @override
  State<TermsScreen> createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  bool terms = false;
  bool privacy = false;

  @override
  Widget build(BuildContext context) {
    return JcScaffold(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(12, 16, 12, 32),
        children: [
          const JcProgress(step: 4, total: 5, label: 'Terms'),
          const SizedBox(height: 12),
          const JcHeading(
            title: 'Terms and privacy',
            description:
                'Please read how JC Connect works before you continue.',
          ),
          const SizedBox(height: 16),
          Card(
            margin: EdgeInsets.zero,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Color(0xFFF1F5F9)),
            ),
            child: const Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  JcTerm(
                    number: '1',
                    title: 'Using the app',
                    body: 'JC Connect serves as the private collegiate and alumni assembly. Membership is restricted to verified students, faculty, staff, and Old Boys.',
                  ),
                  JcTerm(
                    number: '2',
                    title: 'Community conduct and honor code',
                    body: 'In adherence to the motto “For Ever Upwards” members pledge respect, integrity, and good faith.',
                  ),
                  JcTerm(
                    number: '3',
                    title: 'Privacy and data safeguards',
                    body: 'All member directories, graduation cohort numbers, and academic achievements are protected with multi-layer cryptographic authentication.',
                  ),
                  JcTerm(
                    number: '4',
                    title: 'Donations and bursary payments',
                    body: 'Contributions toward collegiate athletic sponsorships, campus restoration, and student bursary grants represent irrevocable settlements overseen by the Board of Trustees.',
                  ),
                  JcTerm(
                    number: '5',
                    title: 'Account review and auditing',
                    body: 'System moderators reserve the authority to verify cohort identity cards, inspect reported behavior, and temporarily restrict feed publishing.',
                  ),
                ],
              ),
            ),
          ),
          CheckboxListTile(
            value: terms,
            onChanged: (value) => setState(() => terms = value ?? false),
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text(
              'I have read and agree to the Terms of Use',
              style: TextStyle(fontSize: 12),
            ),
          ),
          CheckboxListTile(
            value: privacy,
            onChanged: (value) => setState(() => privacy = value ?? false),
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text(
              'I agree to the Privacy Policy and how my collegiate data is stored and utilized',
              style: TextStyle(fontSize: 12),
            ),
          ),
          const SizedBox(height: 8),
          JcButton(
            label: 'Agree and continue',
            enabled: terms && privacy,
            onPressed: () =>
                pushScreen(context, ReviewScreen(data: widget.data)),
          ),
          const SizedBox(height: 12),
          const Center(
            child: Text(
              'ⓘ  You can review these anytime in Settings',
              style: JcTextStyles.small,
            ),
          ),
        ],
      ),
    );
  }
}
