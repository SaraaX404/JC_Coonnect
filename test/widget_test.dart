import 'package:flutter_test/flutter_test.dart';
import 'package:jc_connect_app/src/app/app.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  testWidgets('welcome screen shows the brand and both entry buttons', (
    tester,
  ) async {
    await tester.pumpWidget(const JcConnectApp());

    expect(find.text('JC CONNECT'), findsOneWidget);
    expect(find.text('One College. One Community.'), findsOneWidget);
    expect(find.text('Log in'), findsOneWidget);
    expect(find.text('Join JC Connect'), findsOneWidget);
  });

  testWidgets('role selection enables the onboarding continue action', (
    tester,
  ) async {
    await tester.pumpWidget(const JcConnectApp());
    await tester.tap(find.text('Join JC Connect'));
    await tester.pumpAndSettle();

    expect(find.text('Continue'), findsOneWidget);

    await tester.tap(find.text('Student'));
    await tester.pump();
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();

    final inputs = find.byType(TextField);
    await tester.enterText(inputs.at(0), 'Kemar Brown');
    await tester.enterText(inputs.at(1), 'kemar.brown@gmail.com');
    await tester.enterText(inputs.at(2), '+1 876 555 0142');
    await tester.enterText(inputs.at(3), 'Password1!');
    expect(find.text('Create your account'), findsOneWidget);
    expect(find.text('Step 1 of 5'), findsOneWidget);
  });

  testWidgets('login exposes password reset navigation', (tester) async {
    await tester.pumpWidget(const JcConnectApp());
    await tester.tap(find.text('Log in'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Forgot your password?'));
    await tester.pumpAndSettle();

    expect(find.text('Reset your password'), findsOneWidget);
    expect(find.text('Send reset link'), findsOneWidget);
  });
}
