import 'dart:async';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/show_message.dart';
import 'package:jc_connect_app/src/core/utils/validators.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_logo.dart';
import 'package:jc_connect_app/src/core/widgets/jc_otp.dart';
import 'package:jc_connect_app/src/core/widgets/jc_prompt_link.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:material_ui/material_ui.dart';

/// Errors the verify call can return (Figma "MFA Verification / ..." states).
/// [enterCode] is the only one the app raises itself.
enum MfaError {
  enterCode,
  incorrectCode,
  expiredCode,
  tooManyAttempts,
  resendLimit,
}

/// What the line under the button shows.
sealed class MfaResend {
  const MfaResend();
}

/// "Didn’t receive the code? Resend".
class MfaResendAvailable extends MfaResend {
  const MfaResendAvailable();
}

/// "✓ Code sent", right after a resend.
class MfaResendSent extends MfaResend {
  const MfaResendSent();
}

/// "You can resend a code in N seconds."
class MfaResendCooldown extends MfaResend {
  const MfaResendCooldown(this.seconds);
  final int seconds;
}

/// Login step 2: the code sent to the user's email.
class MfaScreen extends StatefulWidget {
  const MfaScreen({super.key, required this.email});
  final String email;

  @override
  State<MfaScreen> createState() => _MfaScreenState();
}

class _MfaScreenState extends State<MfaScreen> {
  static const _sentFor = Duration(seconds: 2);
  static const _cooldownSeconds = 30;

  final code = TextEditingController();
  MfaError? error;
  MfaResend resend = const MfaResendAvailable();
  Timer? _timer;

  @override
  void dispose() {
    _timer?.cancel();
    code.dispose();
    super.dispose();
  }

  void _verify() {
    if (code.text.length < JcOtp.length) {
      setState(() => error = MfaError.enterCode);
      return;
    }
    // shortcut: no auth call yet. POST /auth/login/verify sets the server
    // errors (incorrect, expired, too many attempts) when it is wired.
    showMessage(context, context.l10n.loginReadyMessage);
  }

  void _resend() {
    _timer?.cancel();
    setState(() {
      resend = const MfaResendSent();
      if (error == MfaError.expiredCode) error = null;
    });
    _timer = Timer(_sentFor, () {
      var left = _cooldownSeconds;
      setState(() => resend = MfaResendCooldown(left));
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        left--;
        setState(
          () => resend = left > 0
              ? MfaResendCooldown(left)
              : const MfaResendAvailable(),
        );
        if (left == 0) timer.cancel();
      });
    });
  }

  @override
  Widget build(BuildContext context) => MfaView(
    maskedEmail: maskEmail(widget.email),
    code: code,
    error: error,
    resend: resend,
    onCodeChanged: (_) {
      if (error == MfaError.enterCode || error == MfaError.incorrectCode) {
        setState(() => error = null);
      }
    },
    onVerify: _verify,
    onResend: _resend,
  );
}

/// Figma "MFA Verification" in any of its eight states.
class MfaView extends StatelessWidget {
  const MfaView({
    super.key,
    required this.maskedEmail,
    required this.code,
    required this.onCodeChanged,
    required this.onVerify,
    required this.onResend,
    this.error,
    this.resend = const MfaResendAvailable(),
  });
  final String maskedEmail;
  final TextEditingController code;
  final ValueChanged<String> onCodeChanged;
  final VoidCallback onVerify;
  final VoidCallback onResend;
  final MfaError? error;
  final MfaResend resend;

  /// Locked out: the button greys out and resend is hidden.
  bool get _locked =>
      error == MfaError.tooManyAttempts || error == MfaError.resendLimit;

  String _errorText(AppLocalizations l10n, MfaError error) => switch (error) {
    MfaError.enterCode => l10n.mfaEnterCode,
    MfaError.incorrectCode => l10n.mfaIncorrectCode,
    MfaError.expiredCode => l10n.mfaExpiredCode,
    MfaError.tooManyAttempts => l10n.mfaTooManyAttempts,
    MfaError.resendLimit => l10n.mfaResendLimit,
  };

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return JcScaffold(
      showBack: false,
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 48, 20, 32),
              child: Column(
                children: [
                  const SizedBox(height: 96),
                  const JcLogo(),
                  const SizedBox(height: 32),
                  Text(
                    l10n.mfaHeading,
                    textAlign: TextAlign.center,
                    style: JcTextStyles.title,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    l10n.mfaSentTo(maskedEmail),
                    textAlign: TextAlign.center,
                    style: JcTextStyles.input.copyWith(color: JcColors.muted),
                  ),
                  const SizedBox(height: 48),
                  JcOtp(controller: code, onChanged: onCodeChanged),
                  if (error case final error?) ...[
                    const SizedBox(height: 12),
                    Text(
                      _errorText(l10n, error),
                      textAlign: TextAlign.center,
                      style: JcTextStyles.input.copyWith(color: JcColors.error),
                    ),
                  ],
                  const SizedBox(height: 24),
                  JcButton(
                    label: l10n.mfaVerifyButton,
                    enabled: !_locked,
                    onPressed: onVerify,
                  ),
                  if (!_locked) ...[
                    const SizedBox(height: 24),
                    _ResendLine(resend: resend, onResend: onResend),
                  ],
                  const Spacer(),
                  const SizedBox(height: 32),
                  Text(
                    l10n.commonSecureFooter,
                    textAlign: TextAlign.center,
                    style: JcTextStyles.secureFooter,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ResendLine extends StatelessWidget {
  const _ResendLine({required this.resend, required this.onResend});
  final MfaResend resend;
  final VoidCallback onResend;

  static const _style = TextStyle(
    fontSize: 12,
    height: 16 / 12,
    color: JcColors.muted,
  );

  @override
  Widget build(BuildContext context) => switch (resend) {
    MfaResendAvailable() => JcPromptLink(
      prompt: context.l10n.mfaNoCodePrompt,
      link: context.l10n.mfaResend,
      promptColor: JcColors.muted,
      onTap: onResend,
    ),
    MfaResendSent() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox.square(
          dimension: 20,
          child: Center(
            child: SvgPicture.asset(
              'assets/icons/checkmark_circle.svg',
              width: 16.667,
              height: 16.667,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(context.l10n.mfaCodeSent, style: _style),
      ],
    ),
    MfaResendCooldown(:final seconds) => Text(
      context.l10n.mfaResendCooldown(seconds),
      textAlign: TextAlign.center,
      style: _style,
    ),
  };
}
