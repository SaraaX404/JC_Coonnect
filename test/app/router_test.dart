import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/app/router.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:material_ui/material_ui.dart';

Future<GoRouter> pumpRouter(WidgetTester tester) async {
  final router = createRouter();
  addTearDown(router.dispose);
  await tester.pumpWidget(
    MaterialApp.router(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
    ),
  );
  return router;
}

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
}
