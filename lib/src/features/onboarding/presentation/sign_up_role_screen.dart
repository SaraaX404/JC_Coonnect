import 'package:jc_connect_app/src/core/widgets/jc_prompt_link.dart';
import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_logo.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/jc_role.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_role_option.dart';
import 'package:material_ui/material_ui.dart';

class SignUpRoleScreen extends StatefulWidget {
  const SignUpRoleScreen({super.key, required this.data});
  final SignUpData data;

  @override
  State<SignUpRoleScreen> createState() => _SignUpRoleScreenState();
}

class _SignUpRoleScreenState extends State<SignUpRoleScreen> {
  @override
  Widget build(BuildContext context) {
    return JcScaffold(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 32),
              children: [
                const Center(child: JcLogo()),
                const SizedBox(height: 24),
                Text(
                  context.l10n.signUpRoleHeading,
                  style: JcTextStyles.title,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Text(
                  context.l10n.signUpRoleDescription,
                  style: JcTextStyles.body,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                ...JcRole.values.map(
                  (role) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: JcRoleOption(
                      role: role,
                      selected: widget.data.role == role,
                      onTap: () => setState(() => widget.data.role = role),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 32),
            child: Column(
              children: [
                JcButton(
                  label: context.l10n.commonContinue,
                  enabled: widget.data.role != null,
                  onPressed: () =>
                      context.push(Routes.signUpAccount, extra: widget.data),
                ),
                const SizedBox(height: 16),
                JcPromptLink(
                  prompt: context.l10n.signUpRoleHaveAccount,
                  link: context.l10n.signUpRoleLogIn,
                  onTap: () => context.push(Routes.login),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
