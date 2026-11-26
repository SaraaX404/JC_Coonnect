import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/navigation.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/core/widgets/jc_logo.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/auth/presentation/reset_password_screen.dart';
import 'package:jc_connect_app/src/features/auth/presentation/widgets/jc_divider.dart';
import 'package:jc_connect_app/src/features/auth/presentation/widgets/jc_social_button.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/sign_up_role_screen.dart';
import 'package:material_ui/material_ui.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();
  bool obscure = true;

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return JcScaffold(
      title: 'Login',
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 48, 20, 32),
        children: [
          const JcLogo(),
          const SizedBox(height: 32),
          const Center(child: Text('Welcome back', style: JcTextStyles.title)),
          const SizedBox(height: 4),
          const Center(
            child: Text(
              'Log in to stay connected to JC.',
              style: JcTextStyles.body,
            ),
          ),
          const SizedBox(height: 32),
          JcInput(
            label: 'Email',
            hint: 'Enter your email',
            controller: email,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          JcInput(
            label: 'Password',
            controller: password,
            obscureText: obscure,
            trailing: IconButton(
              onPressed: () => setState(() => obscure = !obscure),
              icon: Icon(
                obscure
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                size: 18,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () => pushScreen(context, const ResetPasswordScreen()),
              child: const Text('Forgot your password?'),
            ),
          ),
          const SizedBox(height: 8),
          JcButton(
            label: 'Login',
            onPressed: () => showMessage(context, 'Login is ready to connect.'),
          ),
          const SizedBox(height: 32),
          const JcDivider(label: 'Or Continue With'),
          const SizedBox(height: 16),
          JcSocialButton(
            label: 'Continue with Google',
            icon: const Text(
              'G',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4285F4),
              ),
            ),
            onPressed: () => showMessage(context, 'Google sign-in selected.'),
          ),
          const SizedBox(height: 8),
          JcSocialButton(
            label: 'Continue with Apple',
            icon: const Icon(Icons.apple, size: 22),
            onPressed: () => showMessage(context, 'Apple sign-in selected.'),
          ),
          const SizedBox(height: 32),
          Center(
            child: Wrap(
              children: [
                const Text(
                  'Don’t have an account? ',
                  style: JcTextStyles.small,
                ),
                TextButton(
                  onPressed: () =>
                      pushScreen(context, SignUpRoleScreen(data: SignUpData())),
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
