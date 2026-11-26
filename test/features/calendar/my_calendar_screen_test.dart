import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/core/theme/jc_theme.dart';
import 'package:jc_connect_app/src/features/calendar/presentation/my_calendar_screen.dart';
import 'package:material_ui/material_ui.dart';

/// A Tuesday: its week is Sun Nov 15 – Sat Nov 21.
final _today = DateTime(2026, 11, 17);

Future<GoRouter> _pump(WidgetTester tester) async {
  tester.view
    ..physicalSize = const Size(1170, 6000)
    ..devicePixelRatio = 3;
  addTearDown(tester.view.reset);
  final router = GoRouter(
    initialLocation: Routes.calendar,
    routes: [
      GoRoute(
        path: Routes.calendar,
        builder: (_, _) => MyCalendarScreen(today: _today),
      ),
      GoRoute(path: Routes.events, builder: (_, _) => const Placeholder()),
    ],
  );
  addTearDown(router.dispose);
  await tester.pumpWidget(
    MaterialApp.router(
      theme: jcTheme(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
    ),
  );
  await tester.pumpAndSettle();
  return router;
}

Future<void> _tap(WidgetTester tester, String text) async {
  await tester.tap(find.text(text).first);
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('calendar opens on this week with today’s items', (
    tester,
  ) async {
    await _pump(tester);

    expect(find.text('Nov 15 – 21, 2026'), findsOneWidget);
    expect(find.text('Tue, Nov 17'), findsOneWidget);
    expect(find.text('1 item'), findsOneWidget);
    expect(find.text('PTA & Teacher Consultation Meet'), findsOneWidget);
  });

  testWidgets('tapping a day lists its items with their status', (
    tester,
  ) async {
    await _pump(tester);
    await _tap(tester, '18');

    expect(find.text('Wed, Nov 18'), findsOneWidget);
    expect(find.text('3 items'), findsOneWidget);
    expect(find.text('FTC Robotics Autonomous Demo'), findsOneWidget);
    expect(find.text('Going'), findsOneWidget);
    expect(find.text('Joined'), findsOneWidget);
    expect(find.text('Assigned'), findsOneWidget);
    expect(find.text('+62 going'), findsOneWidget);
    expect(find.text('22 in squad'), findsOneWidget);
  });

  testWidgets('sport filter lists sport from the selected day by day', (
    tester,
  ) async {
    await _pump(tester);
    await _tap(tester, 'Sport');

    expect(find.text('PTA & Teacher Consultation Meet'), findsNothing);
    expect(find.text('Wed, Nov 18'), findsOneWidget);
    expect(find.text('U16 Football Training'), findsOneWidget);
    expect(find.text('Fri, Nov 20'), findsOneWidget);
    expect(find.text("Manning Cup: JC vs Wolmer's"), findsOneWidget);
    expect(find.text('Chess Club Weekly Meeting'), findsNothing);
  });

  testWidgets('a day with nothing on it offers to browse events', (
    tester,
  ) async {
    final router = await _pump(tester);
    await _tap(tester, '21');

    expect(find.text('Nothing scheduled'), findsOneWidget);
    await _tap(tester, 'Browse events');
    expect(router.state.uri.path, Routes.events);
  });

  testWidgets('arrows move by week, across months', (tester) async {
    await _pump(tester);
    await tester.tap(find.byTooltip('Next'));
    await tester.pumpAndSettle();
    expect(find.text('Nov 22 – 28, 2026'), findsOneWidget);

    await tester.tap(find.byTooltip('Next'));
    await tester.pumpAndSettle();
    expect(find.text('Nov 29 – Dec 5, 2026'), findsOneWidget);
  });

  testWidgets('the handle switches to the month and back', (tester) async {
    await _pump(tester);
    await tester.tap(find.bySemanticsLabel('Show month'));
    await tester.pumpAndSettle();

    expect(find.text('November 2026'), findsOneWidget);
    // Six weeks: Nov 1 (a Sunday) to Dec 12.
    expect(find.text('12'), findsNWidgets(2));
    await tester.tap(find.byTooltip('Next'));
    await tester.pumpAndSettle();
    expect(find.text('December 2026'), findsOneWidget);

    await tester.tap(find.bySemanticsLabel('Show week'));
    await tester.pumpAndSettle();
    expect(find.text('Dec 13 – 19, 2026'), findsOneWidget);
  });
}
