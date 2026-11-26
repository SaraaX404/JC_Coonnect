import 'package:jc_connect_app/src/core/widgets/jc_prompt_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/show_message.dart';
import 'package:jc_connect_app/src/core/utils/validators.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/core/widgets/jc_logo.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/auth/presentation/widgets/jc_divider.dart';
import 'package:jc_connect_app/src/features/auth/presentation/widgets/jc_social_button.dart';
import 'package:material_ui/material_ui.dart';

/// Figma: Login / Empty, Filled, Invalid Email, Password Required.
/// Incorrect Credentials needs the auth API (not wired yet).
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();
  bool obscure = true;
  String? emailError;
  String? passwordError;

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  void _logIn() {
    setState(() {
      emailError = isValidEmail(email.text)
          ? null
          : context.l10n.loginEmailInvalid;
      passwordError = password.text.isEmpty
          ? context.l10n.loginPasswordRequired
          : null;
    });
    if (emailError != null || passwordError != null) return;
    // shortcut: no auth call yet; replaced when the login API is wired.
    showMessage(context, context.l10n.loginReadyMessage);
  }

  @override
  Widget build(BuildContext context) => JcScaffold(
    showBack: false,
    child: ListView(
      padding: const EdgeInsets.fromLTRB(20, 48, 20, 32),
      children: [
        const Center(child: JcLogo()),
        const SizedBox(height: 32),
        Text(
          context.l10n.commonBrand,
          textAlign: TextAlign.center,
          style: JcTextStyles.title,
        ),
        const SizedBox(height: 4),
        Text(
          context.l10n.commonTagline,
          textAlign: TextAlign.center,
          style: JcTextStyles.body,
        ),
        const SizedBox(height: 32),
        JcInput(
          label: context.l10n.commonEmailLabel,
          hint: context.l10n.commonEmailHint,
          controller: email,
          keyboardType: TextInputType.emailAddress,
          errorText: emailError,
          onChanged: (_) {
            if (emailError != null) setState(() => emailError = null);
          },
        ),
        const SizedBox(height: 24),
        JcInput(
          label: context.l10n.commonPasswordLabel,
          controller: password,
          obscureText: obscure,
          errorText: passwordError,
          onChanged: (_) {
            if (passwordError != null) setState(() => passwordError = null);
          },
          labelAction: _TextLink(
            label: context.l10n.loginForgotPassword,
            style: const TextStyle(
              fontSize: 14,
              height: 18 / 14,
              fontWeight: FontWeight.w500,
              color: JcColors.navyDark,
            ),
            onTap: () => context.push(Routes.resetPassword),
          ),
          trailing: IconButton(
            tooltip: obscure
                ? context.l10n.commonShowPassword
                : context.l10n.commonHidePassword,
            onPressed: () => setState(() => obscure = !obscure),
            icon: obscure
                ? SvgPicture.asset(
                    'assets/icons/view_off.svg',
                    width: 16,
                    height: 16,
                  )
                : const Icon(
                    Icons.visibility_outlined,
                    size: 16,
                    color: JcColors.muted,
                  ),
          ),
        ),
        const SizedBox(height: 32),
        JcButton(label: context.l10n.loginButton, onPressed: _logIn),
        const SizedBox(height: 32),
        JcDivider(label: context.l10n.loginOrContinueWith),
        const SizedBox(height: 16),
        JcSocialButton(
          label: context.l10n.loginContinueWithGoogle,
          icon: SvgPicture.asset(
            'assets/icons/google.svg',
            width: 16,
            height: 16,
          ),
          onPressed: () =>
              showMessage(context, context.l10n.loginGoogleSelectedMessage),
        ),
        const SizedBox(height: 8),
        JcSocialButton(
          label: context.l10n.loginContinueWithApple,
          icon: SvgPicture.asset(
            'assets/icons/apple.svg',
            width: 20,
            height: 20,
          ),
          onPressed: () =>
              showMessage(context, context.l10n.loginAppleSelectedMessage),
        ),
        const SizedBox(height: 32),
        JcPromptLink(
          prompt: context.l10n.loginNoAccountPrompt,
          link: context.l10n.loginSignUpLink,
          onTap: () => context.push(Routes.signUp),
        ),
      ],
    ),
  );
}

/// Inline text link sized to its text, as in the design.
class _TextLink extends StatelessWidget {
  const _TextLink({
    required this.label,
    required this.style,
    required this.onTap,
  });
  final String label;
  final TextStyle style;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Semantics(
    button: true,
    child: GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Text(label, style: style),
    ),
  );
}
