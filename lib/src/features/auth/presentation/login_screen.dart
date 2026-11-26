import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/show_message.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/core/widgets/jc_logo.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/auth/presentation/widgets/jc_divider.dart';
import 'package:jc_connect_app/src/features/auth/presentation/widgets/jc_social_button.dart';
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
      title: context.l10n.loginTitle,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 48, 20, 32),
        children: [
          const JcLogo(),
          const SizedBox(height: 32),
          Center(
            child: Text(context.l10n.loginHeading, style: JcTextStyles.title),
          ),
          const SizedBox(height: 4),
          Center(
            child: Text(
              context.l10n.loginDescription,
              style: JcTextStyles.body,
            ),
          ),
          const SizedBox(height: 32),
          JcInput(
            label: context.l10n.commonEmailLabel,
            hint: context.l10n.commonEmailHint,
            controller: email,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          JcInput(
            label: context.l10n.commonPasswordLabel,
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
              onPressed: () => context.push(Routes.resetPassword),
              child: Text(context.l10n.loginForgotPassword),
            ),
          ),
          const SizedBox(height: 8),
          JcButton(
            label: context.l10n.loginTitle,
            onPressed: () =>
                showMessage(context, context.l10n.loginReadyMessage),
          ),
          const SizedBox(height: 32),
          JcDivider(label: context.l10n.loginOrContinueWith),
          const SizedBox(height: 16),
          JcSocialButton(
            label: context.l10n.loginContinueWithGoogle,
            icon: const Text(
              'G',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4285F4),
              ),
            ),
            onPressed: () =>
                showMessage(context, context.l10n.loginGoogleSelectedMessage),
          ),
          const SizedBox(height: 8),
          JcSocialButton(
            label: context.l10n.loginContinueWithApple,
            icon: const Icon(Icons.apple, size: 22),
            onPressed: () =>
                showMessage(context, context.l10n.loginAppleSelectedMessage),
          ),
          const SizedBox(height: 32),
          Center(
            child: Wrap(
              children: [
                Text(
                  context.l10n.loginNoAccountPrompt,
                  style: JcTextStyles.small,
                ),
                TextButton(
                  onPressed: () => context.push(Routes.signUp),
                  child: Text(context.l10n.loginSignUpLink),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
