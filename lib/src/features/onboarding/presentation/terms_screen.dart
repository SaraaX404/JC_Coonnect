import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
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
          JcProgress(step: 4, total: 5, label: context.l10n.termsTitle),
          const SizedBox(height: 12),
          JcHeading(
            title: context.l10n.termsHeading,
            description: context.l10n.termsDescription,
          ),
          const SizedBox(height: 16),
          Card(
            margin: EdgeInsets.zero,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: JcColors.track),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  JcTerm(
                    number: '1',
                    title: context.l10n.termsUsingTitle,
                    body: context.l10n.termsUsingBody,
                  ),
                  JcTerm(
                    number: '2',
                    title: context.l10n.termsConductTitle,
                    body: context.l10n.termsConductBody,
                  ),
                  JcTerm(
                    number: '3',
                    title: context.l10n.termsPrivacyTitle,
                    body: context.l10n.termsPrivacyBody,
                  ),
                  JcTerm(
                    number: '4',
                    title: context.l10n.termsDonationsTitle,
                    body: context.l10n.termsDonationsBody,
                  ),
                  JcTerm(
                    number: '5',
                    title: context.l10n.termsReviewTitle,
                    body: context.l10n.termsReviewBody,
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
            title: Text(
              context.l10n.termsAgreeTerms,
              style: const TextStyle(fontSize: 12),
            ),
          ),
          CheckboxListTile(
            value: privacy,
            onChanged: (value) => setState(() => privacy = value ?? false),
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(
              context.l10n.termsAgreePrivacy,
              style: const TextStyle(fontSize: 12),
            ),
          ),
          const SizedBox(height: 8),
          JcButton(
            label: context.l10n.termsAgreeButton,
            enabled: terms && privacy,
            onPressed: () =>
                pushScreen(context, ReviewScreen(data: widget.data)),
          ),
          const SizedBox(height: 12),
          Center(
            child: Text(
              context.l10n.termsReviewLater,
              style: JcTextStyles.small,
            ),
          ),
        ],
      ),
    );
  }
}
