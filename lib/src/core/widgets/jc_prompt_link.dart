import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:material_ui/material_ui.dart';

/// Figma footer pattern "Text + Link": "Don’t have an account?  Sign up".
/// Both pieces share one 12/16 line so they stay on the same baseline.
class JcPromptLink extends StatelessWidget {
  const JcPromptLink({
    super.key,
    required this.prompt,
    required this.link,
    required this.onTap,
    this.promptColor = JcColors.secondaryText,
  });
  final String prompt;
  final String link;
  final VoidCallback onTap;

  /// Login uses #464646; the MFA resend row uses the muted grey.
  final Color promptColor;

  @override
  Widget build(BuildContext context) => Wrap(
    alignment: WrapAlignment.center,
    crossAxisAlignment: WrapCrossAlignment.center,
    spacing: 10,
    children: [
      Text(
        prompt,
        style: TextStyle(fontSize: 12, height: 16 / 12, color: promptColor),
      ),
      Semantics(
        button: true,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onTap,
          child: Text(
            link,
            style: const TextStyle(
              fontSize: 12,
              height: 16 / 12,
              fontWeight: FontWeight.w600,
              color: JcColors.navyDark,
            ),
          ),
        ),
      ),
    ],
  );
}
