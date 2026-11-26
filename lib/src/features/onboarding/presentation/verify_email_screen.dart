import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/network/api.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/core/widgets/jc_prompt_link.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/show_message.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_logo.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/onboarding/data/sign_up_repository.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/jc_role.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/core/widgets/jc_otp.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/sign_up_error.dart';
import 'package:material_ui/material_ui.dart';

/// Sign-up: the emailed code. A right one gives the sign-up token; the
/// pickers' lists load with it before the role details open.
class VerifyEmailScreen extends ConsumerStatefulWidget {
  const VerifyEmailScreen({super.key, required this.data});
  final SignUpData data;

  @override
  ConsumerState<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends ConsumerState<VerifyEmailScreen> {
  final otp = TextEditingController();
  bool busy = false;

  Future<void> _call(Future<void> Function() request) async {
    if (busy) return;
    setState(() => busy = true);
    try {
      await request();
    } on ApiException catch (e) {
      if (!mounted) return;
      if (e.status == 400) {
        showMessage(context, context.l10n.verifyEmailIncorrectCode);
      } else {
        showSignUpError(context, e, widget.data);
      }
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  Future<void> _verify() => _call(() async {
    final repo = ref.read(signUpRepositoryProvider);
    final data = widget.data;
    data.signupToken = await repo.verifyCode(data.email, otp.text);
    data.options = await repo.options(data.signupToken);
    if (mounted) _openRoleDetails(context);
  });

  Future<void> _resend() => _call(() async {
    await ref.read(signUpRepositoryProvider).sendCode(widget.data.email);
    if (mounted) showMessage(context, context.l10n.verifyEmailResentMessage);
  });

  @override
  void dispose() {
    otp.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return JcScaffold(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 48, 20, 32),
        children: [
          const Center(child: JcLogo()),
          const SizedBox(height: 32),
          Text(
            context.l10n.verifyEmailHeading,
            style: JcTextStyles.title,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            context.l10n.verifyEmailSentTo(widget.data.email),
            style: const TextStyle(
              fontSize: 14,
              height: 1.4,
              color: JcColors.muted,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),
          JcOtp(controller: otp),
          const SizedBox(height: 24),
          JcButton(
            label: context.l10n.verifyEmailButton,
            enabled: !busy,
            onPressed: () {
              if (otp.text.length == JcOtp.length) {
                unawaited(_verify());
              } else {
                showMessage(context, context.l10n.verifyEmailEnterCode);
              }
            },
          ),
          const SizedBox(height: 20),
          Center(
            child: JcPromptLink(
              prompt: context.l10n.verifyEmailNoCodePrompt,
              link: context.l10n.verifyEmailResend,
              onTap: () => unawaited(_resend()),
            ),
          ),
          const SizedBox(height: 150),
          Center(
            child: Text(
              context.l10n.commonSecureFooter,
              style: const TextStyle(fontSize: 12, color: Color(0xFF94A3B8)),
            ),
          ),
        ],
      ),
    );
  }

  void _openRoleDetails(BuildContext context) {
    final route = switch (widget.data.role!) {
      JcRole.student => Routes.signUpStudent,
      JcRole.parent => Routes.signUpParent,
      JcRole.teacher => Routes.signUpTeacher,
      JcRole.oldBoy => Routes.signUpOldBoy,
    };
    unawaited(context.push(route, extra: widget.data));
  }
}
