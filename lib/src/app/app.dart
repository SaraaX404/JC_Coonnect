import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/app/router.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:material_ui/material_ui.dart';

class JcConnectApp extends StatefulWidget {
  const JcConnectApp({super.key});

  @override
  State<JcConnectApp> createState() => _JcConnectAppState();
}

class _JcConnectAppState extends State<JcConnectApp> {
  // One router per app instance, so tests never share navigation state.
  final GoRouter _router = createRouter();

  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    onGenerateTitle: (context) => context.l10n.appName,
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Inter',
      colorScheme: ColorScheme.fromSeed(seedColor: JcColors.primary),
    ),
    routerConfig: _router,
  );
}
