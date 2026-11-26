import 'package:flutter_test/flutter_test.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers/pump_app.dart';

const _invalidEmail = 'Enter a valid email, like name@example.com.';
const _passwordRequired = 'Enter your password';

Future<void> _submit(
  WidgetTester tester, {
  required String email,
  required String password,
}) async {
  await tester.enterText(find.byType(TextField).at(0), email);
  await tester.enterText(find.byType(TextField).at(1), password);
  await tester.tap(find.text('Log in'));
  await tester.pump();
}

void main() {
  testWidgets('log in with a malformed email shows the invalid email error', (
    tester,
  ) async {
    await pumpRouter(tester, location: Routes.login);
    await _submit(tester, email: 'm.sterlingjc.edu.jm', password: 'secret12');

    expect(find.text(_invalidEmail), findsOneWidget);
    expect(find.text(_passwordRequired), findsNothing);
  });

  testWidgets('log in without a password shows the password required error', (
    tester,
  ) async {
    await pumpRouter(tester, location: Routes.login);
    await _submit(tester, email: 'm.sterling@jc.edu.jm', password: '');

    expect(find.text(_passwordRequired), findsOneWidget);
    expect(find.text(_invalidEmail), findsNothing);
  });

  testWidgets('editing a field clears its error', (tester) async {
    await pumpRouter(tester, location: Routes.login);
    await _submit(tester, email: 'nope', password: 'secret12');
    expect(find.text(_invalidEmail), findsOneWidget);

    await tester.enterText(find.byType(TextField).at(0), 'nope@jc.edu.jm');
    await tester.pump();
    expect(find.text(_invalidEmail), findsNothing);
  });

  testWidgets('valid email and password show no field errors', (
    tester,
  ) async {
    await pumpRouter(tester, location: Routes.login);
    await _submit(tester, email: 'm.sterling@jc.edu.jm', password: 'secret12');

    expect(find.text(_invalidEmail), findsNothing);
    expect(find.text(_passwordRequired), findsNothing);
  });
}
