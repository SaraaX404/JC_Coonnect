import 'package:flutter_test/flutter_test.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:material_ui/material_ui.dart';

import '../helpers/pump_app.dart';

void main() {
  testWidgets('event route with a known id opens the event details', (
    tester,
  ) async {
    final router = await pumpRouter(tester);
    router.go(Routes.event('1'));
    await tester.pumpAndSettle();

    expect(find.text('Event details'), findsOneWidget);
    expect(find.text('FTC Robotics Autonomous Demo'), findsOneWidget);
  });

  testWidgets('event route with an unknown id redirects to the events list', (
    tester,
  ) async {
    final router = await pumpRouter(tester);
    router.go(Routes.event('missing'));
    await tester.pumpAndSettle();

    expect(find.text('Event details'), findsNothing);
    expect(find.text('This week'), findsOneWidget);
  });

  testWidgets('events supports search, calendar, and detail navigation', (
    tester,
  ) async {
    await pumpRouter(tester, location: Routes.events);

    expect(find.text('Events'), findsOneWidget);
    expect(find.text('FTC Robotics Autonomous Demo'), findsOneWidget);

    await tester.enterText(
      find.byKey(const ValueKey('event-search-input')),
      'FTC',
    );
    await tester.pump();
    expect(find.text('Annual STEM & Science Carnival'), findsNothing);
    expect(find.text('FTC Robotics Autonomous Demo'), findsOneWidget);

    final eventCard = find.ancestor(
      of: find.text('FTC Robotics Autonomous Demo'),
      matching: find.byType(InkWell),
    );
    await tester.tap(eventCard.last);
    await tester.pumpAndSettle();
    expect(find.text('Event details'), findsOneWidget);
    expect(find.text('Join Now'), findsOneWidget);
    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.tap(find.byTooltip('Calendar view'));
    await tester.pumpAndSettle();
    expect(find.text('November 2026'), findsOneWidget);
  });
}
