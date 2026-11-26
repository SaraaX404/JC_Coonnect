import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/network/api.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/show_message.dart';
import 'package:jc_connect_app/src/core/utils/validators.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/core/widgets/jc_logo.dart';
import 'package:jc_connect_app/src/core/widgets/jc_otp.dart';
import 'package:jc_connect_app/src/core/widgets/jc_prompt_link.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/auth/data/auth_repository.dart';
import 'package:jc_connect_app/src/features/auth/domain/login_result.dart';
import 'package:material_ui/material_ui.dart';

/// Errors on the code step. [enterCode] is the only one the app raises
/// itself; the API returns `invalid_code` (incorrect) and 429 (too many
/// attempts). An emailed code dies after 5 wrong tries: that reads as
/// incorrect, and Resend gets a new one.
enum MfaError { enterCode, incorrectCode, tooManyAttempts }

/// What the line under the button shows for an emailed code.
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

/// Login step 2 (backend ADR 0010): an emailed code (Figma "MFA
/// Verification"), or the authenticator app / a recovery code for users who
/// set one up.
class MfaScreen extends ConsumerStatefulWidget {
  const MfaScreen({super.key, required this.login});
  final LoginNeedsCode login;

  @override
  ConsumerState<MfaScreen> createState() => _MfaScreenState();
}

class _MfaScreenState extends ConsumerState<MfaScreen> {
  static const _sentFor = Duration(seconds: 2);
  static const _cooldownSeconds = 30;

  final code = TextEditingController();
  bool recovery = false;
  bool busy = false;
  MfaError? error;
  MfaResend resend = const MfaResendAvailable();
  Timer? _timer;

  @override
  void dispose() {
    _timer?.cancel();
    code.dispose();
    super.dispose();
  }

  void _onVerify() {
    final text = code.text.trim();
    if (recovery ? text.isEmpty : text.length < JcOtp.length) {
      setState(() => error = MfaError.enterCode);
      return;
    }
    unawaited(_verify(text));
  }

  Future<void> _verify(String text) => _call(() async {
    await ref
        .read(authRepositoryProvider)
        .verify(
          challenge: widget.login.challenge,
          code: recovery ? null : text,
          recoveryCode: recovery ? text : null,
        );
    if (mounted) context.go(Routes.events);
  });

  void _onResend() => unawaited(
    _call(() async {
      await ref.read(authRepositoryProvider).resend(widget.login.challenge);
      if (mounted) _startCooldown();
    }),
  );

  void _startCooldown() {
    _timer?.cancel();
    setState(() {
      resend = const MfaResendSent();
      error = null;
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

  /// Runs a verify or resend call and maps its errors to the screen.
  Future<void> _call(Future<void> Function() request) async {
    if (busy) return;
    setState(() => busy = true);
    try {
      await request();
    } on ApiException catch (e) {
      if (!mounted) return;
      switch (e) {
        // A wrong code, or a malformed one (400).
        case ApiException(status: 400) ||
            ApiException(status: 401, code: 'invalid_code'):
          setState(() => error = MfaError.incorrectCode);
        // The challenge expired (5 min) or was used: start over.
        case ApiException(status: 401):
          context.go(Routes.sessionExpired);
        case ApiException(status: 429):
          setState(() => error = MfaError.tooManyAttempts);
        default:
          showMessage(context, e.message(context.l10n));
      }
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  @override
  Widget build(BuildContext context) => MfaView(
    method: widget.login.method,
    maskedEmail: maskEmail(widget.login.email),
    code: code,
    recovery: recovery,
    busy: busy,
    error: error,
    resend: resend,
    // Any edit clears the error; after a lockout the server answers 429
    // again if the minute isn't up.
    onCodeChanged: (_) {
      if (error != null) setState(() => error = null);
    },
    onVerify: _onVerify,
    onResend: _onResend,
    onToggleRecovery: () => setState(() {
      recovery = !recovery;
      code.clear();
      error = null;
    }),
  );
}

/// The code screen in any of its states.
class MfaView extends StatelessWidget {
  const MfaView({
    super.key,
    required this.method,
    required this.maskedEmail,
    required this.code,
    required this.onCodeChanged,
    required this.onVerify,
    required this.onResend,
    required this.onToggleRecovery,
    this.recovery = false,
    this.busy = false,
    this.error,
    this.resend = const MfaResendAvailable(),
  });
  final CodeMethod method;
  final String maskedEmail;
  final TextEditingController code;
  final ValueChanged<String> onCodeChanged;
  final VoidCallback onVerify;
  final VoidCallback onResend;
  final VoidCallback onToggleRecovery;

  /// Recovery code instead of the authenticator code ([CodeMethod.totp]).
  final bool recovery;

  /// A verify or resend call is running.
  final bool busy;
  final MfaError? error;
  final MfaResend resend;

  bool get _locked => error == MfaError.tooManyAttempts;

  String _errorText(AppLocalizations l10n, MfaError error) => switch (error) {
    MfaError.enterCode =>
      recovery ? l10n.mfaEnterRecoveryCode : l10n.mfaEnterCode,
    MfaError.incorrectCode => l10n.mfaIncorrectCode,
    MfaError.tooManyAttempts => l10n.commonTooManyAttempts,
  };

  String _subtitle(AppLocalizations l10n) => switch (method) {
    CodeMethod.email => l10n.mfaSentTo(maskedEmail),
    CodeMethod.totp when recovery => l10n.mfaRecoveryPrompt,
    CodeMethod.totp => l10n.mfaAppPrompt,
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
                    _subtitle(l10n),
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
                    enabled: !_locked && !busy,
                    onPressed: onVerify,
                  ),
                  const SizedBox(height: 24),
                  switch (method) {
                    CodeMethod.email when _locked => const SizedBox.shrink(),
                    CodeMethod.email => _ResendLine(
                      resend: resend,
                      onResend: onResend,
                    ),
                    CodeMethod.totp => JcPromptLink(
                      prompt: recovery
                          ? l10n.mfaHaveAppPrompt
                          : l10n.mfaLostPhonePrompt,
                      link: recovery
                          ? l10n.mfaUseAppLink
                          : l10n.mfaUseRecoveryLink,
                      promptColor: JcColors.muted,
                      onTap: onToggleRecovery,
                    ),
                  },
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
