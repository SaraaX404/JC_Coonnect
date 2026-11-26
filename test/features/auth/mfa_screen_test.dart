import 'package:flutter_test/flutter_test.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/core/theme/jc_theme.dart';
import 'package:jc_connect_app/src/features/auth/presentation/mfa_screen.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers/pump_app.dart';

const _verify = 'Verify and log in';
const _useRecovery = 'Use a recovery code';

Future<void> _pumpView(WidgetTester tester, {MfaError? error}) async {
  final code = TextEditingController(text: '111111');
  addTearDown(code.dispose);
  await tester.pumpWidget(
    MaterialApp(
      theme: jcTheme(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: MfaView(
        code: code,
        error: error,
        onCodeChanged: (_) {},
        onVerify: () {},
        onToggleRecovery: () {},
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
  testWidgets('valid login opens MFA asking for the authenticator code', (
    tester,
  ) async {
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
      find.text('Enter the 6-digit code from\nyour authenticator app'),
      findsOneWidget,
    );
  });

  testWidgets('verify with an incomplete code asks for six digits', (
    tester,
  ) async {
    await pumpRouter(tester, location: Routes.loginVerify);
    await tester.enterText(find.byType(TextField), '123');
    await tester.tap(find.text(_verify));
    await tester.pump();

    expect(find.text('Enter the 6-digit code.'), findsOneWidget);

    await tester.enterText(find.byType(TextField), '1234');
    await tester.pump();
    expect(find.text('Enter the 6-digit code.'), findsNothing);
  });

  testWidgets('recovery link switches to a recovery code field and back', (
    tester,
  ) async {
    await pumpRouter(tester, location: Routes.loginVerify);
    await tester.tap(find.text(_useRecovery));
    await tester.pump();

    expect(find.text('Recovery code'), findsOneWidget);
    await tester.tap(find.text(_verify));
    await tester.pump();
    expect(find.text('Enter a recovery code.'), findsOneWidget);

    await tester.tap(find.text('Use authenticator app'));
    await tester.pump();
    expect(find.text('Recovery code'), findsNothing);
    expect(find.text('Enter a recovery code.'), findsNothing);
    expect(find.text(_useRecovery), findsOneWidget);
  });

  testWidgets('incorrect code shows its error and keeps verify enabled', (
    tester,
  ) async {
    await _pumpView(tester, error: MfaError.incorrectCode);

    expect(
      find.text('That code isn’t right. Check it and try again.'),
      findsOneWidget,
    );
    expect(_verifyEnabled(tester), isTrue);
  });

  testWidgets('too many attempts disables verify', (tester) async {
    await _pumpView(tester, error: MfaError.tooManyAttempts);

    expect(
      find.text('Too many attempts. Wait a minute and try again.'),
      findsOneWidget,
    );
    expect(_verifyEnabled(tester), isFalse);
  });
}
