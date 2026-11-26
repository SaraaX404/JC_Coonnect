import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/show_message.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/core/widgets/jc_logo.dart';
import 'package:jc_connect_app/src/core/widgets/jc_otp.dart';
import 'package:jc_connect_app/src/core/widgets/jc_prompt_link.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:material_ui/material_ui.dart';

/// Errors on the verify step. [enterCode] is the only one the app raises
/// itself; POST /auth/login/verify returns `invalid_code` (incorrect) and
/// 429 (too many attempts).
enum MfaError { enterCode, incorrectCode, tooManyAttempts }

/// Login step 2 (ADR 0005): a code from the authenticator app, or one of
/// the recovery codes if the phone is lost.
class MfaScreen extends StatefulWidget {
  const MfaScreen({super.key});

  @override
  State<MfaScreen> createState() => _MfaScreenState();
}

class _MfaScreenState extends State<MfaScreen> {
  final code = TextEditingController();
  bool recovery = false;
  MfaError? error;

  @override
  void dispose() {
    code.dispose();
    super.dispose();
  }

  void _verify() {
    final text = code.text.trim();
    if (recovery ? text.isEmpty : text.length < JcOtp.length) {
      setState(() => error = MfaError.enterCode);
      return;
    }
    // shortcut: no auth call yet. POST /auth/login/verify sets the server
    // errors (incorrect, too many attempts) when it is wired.
    showMessage(context, context.l10n.loginReadyMessage);
  }

  @override
  Widget build(BuildContext context) => MfaView(
    code: code,
    recovery: recovery,
    error: error,
    onCodeChanged: (_) {
      if (error != null && error != MfaError.tooManyAttempts) {
        setState(() => error = null);
      }
    },
    onVerify: _verify,
    onToggleRecovery: () => setState(() {
      recovery = !recovery;
      code.clear();
      if (error != MfaError.tooManyAttempts) error = null;
    }),
  );
}

/// The verify screen in any of its states.
class MfaView extends StatelessWidget {
  const MfaView({
    super.key,
    required this.code,
    required this.onCodeChanged,
    required this.onVerify,
    required this.onToggleRecovery,
    this.recovery = false,
    this.error,
  });
  final TextEditingController code;
  final ValueChanged<String> onCodeChanged;
  final VoidCallback onVerify;
  final VoidCallback onToggleRecovery;

  /// Recovery code instead of the authenticator code.
  final bool recovery;
  final MfaError? error;

  bool get _locked => error == MfaError.tooManyAttempts;

  String _errorText(AppLocalizations l10n, MfaError error) => switch (error) {
    MfaError.enterCode =>
      recovery ? l10n.mfaEnterRecoveryCode : l10n.mfaEnterCode,
    MfaError.incorrectCode => l10n.mfaIncorrectCode,
    MfaError.tooManyAttempts => l10n.mfaTooManyAttempts,
  };

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final errorText = error == null ? null : _errorText(l10n, error!);
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
                    recovery ? l10n.mfaRecoveryPrompt : l10n.mfaAppPrompt,
                    textAlign: TextAlign.center,
                    style: JcTextStyles.input.copyWith(color: JcColors.muted),
                  ),
                  const SizedBox(height: 48),
                  if (recovery)
                    JcInput(
                      label: l10n.mfaRecoveryCodeLabel,
                      controller: code,
                      onChanged: onCodeChanged,
                      errorText: errorText,
                    )
                  else ...[
                    JcOtp(controller: code, onChanged: onCodeChanged),
                    if (errorText != null) ...[
                      const SizedBox(height: 12),
                      Text(
                        errorText,
                        textAlign: TextAlign.center,
                        style: JcTextStyles.input.copyWith(
                          color: JcColors.error,
                        ),
                      ),
                    ],
                  ],
                  const SizedBox(height: 24),
                  JcButton(
                    label: l10n.mfaVerifyButton,
                    enabled: !_locked,
                    onPressed: onVerify,
                  ),
                  const SizedBox(height: 24),
                  JcPromptLink(
                    prompt: recovery
                        ? l10n.mfaHaveAppPrompt
                        : l10n.mfaLostPhonePrompt,
                    link: recovery
                        ? l10n.mfaUseAppLink
                        : l10n.mfaUseRecoveryLink,
                    promptColor: JcColors.muted,
                    onTap: onToggleRecovery,
                  ),
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
