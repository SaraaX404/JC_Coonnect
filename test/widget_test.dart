import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:jc_connect_app/main.dart';

void main() {
  testWidgets('shows the JC Connect welcome screen', (tester) async {
    await tester.pumpWidget(const JcConnectApp());

    expect(find.text('JC CONNECT'), findsOneWidget);
    expect(find.text('One College. One Community.'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Join as a Member'), findsOneWidget);
  });

  testWidgets('role selection enables the onboarding continue action', (
    tester,
  ) async {
    await tester.pumpWidget(const JcConnectApp());
    await tester.tap(find.text('Join as a Member'));
    await tester.pumpAndSettle();

    expect(find.text('Join JC Connect'), findsOneWidget);
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
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Forgot your password?'));
    await tester.pumpAndSettle();

    expect(find.text('Reset your password'), findsOneWidget);
    expect(find.text('Send reset link'), findsOneWidget);
  });

  testWidgets('events supports search, calendar, and detail navigation', (
    tester,
  ) async {
    await tester.pumpWidget(const JcConnectApp());
    await tester.tap(find.text('Browse events'));
    await tester.pumpAndSettle();

    expect(find.text('Events'), findsOneWidget);
    expect(find.text('FTC Robotics Autonomous Demo'), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('event-search-input')));
    await tester.pump();
    await tester.enterText(
      find.byKey(const ValueKey('event-search-input')),
      'FTC',
    );
    expect(find.text('Annual STEM & Science Carnival'), findsNothing);
    expect(find.text('FTC Robotics Autonomous Demo'), findsOneWidget);

    final eventCard = find.ancestor(
      of: find.text('FTC Robotics Autonomous Demo'),
      matching: find.byType(InkWell),
    );
    await tester.tap(eventCard.last);
    await tester.pumpAndSettle();
    expect(find.text('Event details'), findsOneWidget);
    expect(find.text('Join event'), findsOneWidget);
    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.tap(find.byTooltip('Calendar view'));
    await tester.pumpAndSettle();
    expect(find.text('November 2026'), findsOneWidget);
  });
}
