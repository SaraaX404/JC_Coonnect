import 'package:flutter_test/flutter_test.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/core/theme/jc_theme.dart';
import 'package:jc_connect_app/src/features/auth/presentation/mfa_screen.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers/pump_app.dart';

const _resend = 'Resend';
const _verify = 'Verify and log in';

Future<void> _pumpView(
  WidgetTester tester, {
  MfaError? error,
  MfaResend resend = const MfaResendAvailable(),
}) async {
  final code = TextEditingController(text: '111111');
  addTearDown(code.dispose);
  await tester.pumpWidget(
    MaterialApp(
      theme: jcTheme(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: MfaView(
        maskedEmail: 'm***@jc.edu.jm',
        code: code,
        error: error,
        resend: resend,
        onCodeChanged: (_) {},
        onVerify: () {},
        onResend: () {},
      ),
    ),
  );
  await tester.pump();
}

bool _verifyEnabled(WidgetTester tester) => tester
    .widget<FilledButton>(
      find.ancestor(
        of: find.text(_verify),
        matching: find.byType(FilledButton),
      ),
    )
    .enabled;

void main() {
  testWidgets('valid login opens MFA with the masked email', (tester) async {
    await pumpRouter(tester, location: Routes.login);
    await tester.enterText(
      find.byType(TextField).at(0),
      'm.sterling@jc.edu.jm',
    );
    await tester.enterText(find.byType(TextField).at(1), 'secret12');
    await tester.tap(find.text('Log in'));
    await tester.pumpAndSettle();

    expect(find.text('Verify your identity'), findsOneWidget);
    expect(
      find.text('We sent a 6-digit code to\nyour email m***@jc.edu.jm'),
      findsOneWidget,
    );
  });

  testWidgets('MFA without a login email redirects to login', (tester) async {
    await pumpRouter(tester, location: Routes.loginVerify);

    expect(find.text('Verify your identity'), findsNothing);
    expect(find.text('Forgot your password?'), findsOneWidget);
  });

  testWidgets('verify with an incomplete code asks for six digits', (
    tester,
  ) async {
    final router = await pumpRouter(tester);
    router.go(Routes.loginVerify, extra: 'm.sterling@jc.edu.jm');
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), '123');
    await tester.tap(find.text(_verify));
    await tester.pump();

    expect(find.text('Enter the 6-digit code.'), findsOneWidget);

    await tester.enterText(find.byType(TextField), '1234');
    await tester.pump();
    expect(find.text('Enter the 6-digit code.'), findsNothing);
  });

  testWidgets('resend shows code sent, then a 30 second cooldown', (
    tester,
  ) async {
    final router = await pumpRouter(tester);
    router.go(Routes.loginVerify, extra: 'm.sterling@jc.edu.jm');
    await tester.pumpAndSettle();

    await tester.tap(find.text(_resend));
    await tester.pump();
    expect(find.text('Code sent'), findsOneWidget);
    expect(find.text(_resend), findsNothing);

    await tester.pump(const Duration(seconds: 2));
    expect(find.text('You can resend a code in 30 seconds.'), findsOneWidget);

    await tester.pump(const Duration(seconds: 29));
    expect(find.text('You can resend a code in 1 second.'), findsOneWidget);

    await tester.pump(const Duration(seconds: 1));
    expect(find.text(_resend), findsOneWidget);
  });

  testWidgets('incorrect code shows its error and keeps resend', (
    tester,
  ) async {
    await _pumpView(tester, error: MfaError.incorrectCode);

    expect(
      find.text('That code isn’t right. Check it and try again.'),
      findsOneWidget,
    );
    expect(find.text(_resend), findsOneWidget);
    expect(_verifyEnabled(tester), isTrue);
  });

  testWidgets('expired code shows its error and keeps resend', (tester) async {
    await _pumpView(tester, error: MfaError.expiredCode);

    expect(
      find.text('This code has expired. Tap Resend to get a new one.'),
      findsOneWidget,
    );
    expect(find.text(_resend), findsOneWidget);
  });

  testWidgets('too many attempts disables verify and hides resend', (
    tester,
  ) async {
    await _pumpView(tester, error: MfaError.tooManyAttempts);

    expect(
      find.text('Too many incorrect attempts. Try again in 15 minutes.'),
      findsOneWidget,
    );
    expect(find.text(_resend), findsNothing);
    expect(_verifyEnabled(tester), isFalse);
  });

  testWidgets('resend limit disables verify and hides resend', (tester) async {
    await _pumpView(tester, error: MfaError.resendLimit);

    expect(
      find.text('You’ve reached the resend limit. Try again later.'),
      findsOneWidget,
    );
    expect(find.text(_resend), findsNothing);
    expect(_verifyEnabled(tester), isFalse);
  });
}
