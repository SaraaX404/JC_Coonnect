import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/navigation.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_logo.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/auth/presentation/login_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/jc_role.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/account_details_screen.dart';
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
                const Text(
                  'Join JC Connect',
                  style: JcTextStyles.title,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                const Text(
                  'Tell us how you’re connected to Jamaica College.',
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
                  label: 'Continue',
                  enabled: widget.data.role != null,
                  onPressed: () => pushScreen(
                    context,
                    AccountDetailsScreen(data: widget.data),
                  ),
                ),
                const SizedBox(height: 16),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    const Text(
                      'Already have an account? ',
                      style: JcTextStyles.small,
                    ),
                    TextButton(
                      onPressed: () => pushScreen(context, const LoginScreen()),
                      child: const Text('Log in'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
