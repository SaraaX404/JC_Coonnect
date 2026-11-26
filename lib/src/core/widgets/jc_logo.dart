import 'package:material_ui/material_ui.dart';

class JcLogo extends StatelessWidget {
  const JcLogo({super.key});
  @override
  Widget build(BuildContext context) => Image.asset(
    'assets/jc_logo.png',
    width: 64,
    height: 75,
    fit: BoxFit.contain,
  );
}
