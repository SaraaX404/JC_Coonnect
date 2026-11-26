import 'package:jc_connect_app/l10n/l10n.dart';

import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/features/auth/presentation/welcome_screen.dart';
import 'package:material_ui/material_ui.dart';

class JcConnectApp extends StatelessWidget {
  const JcConnectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: const WelcomeScreen(),
    );
  }
}
