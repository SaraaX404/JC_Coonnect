import 'package:material_ui/material_ui.dart';

class JcLogo extends StatelessWidget {
  const JcLogo({super.key, this.width = 64});

  /// The crest keeps its 186:217 aspect ratio.
  final double width;

  @override
  Widget build(BuildContext context) => Image.asset(
    'assets/jc_logo.png',
    width: width,
    height: width * 217 / 186,
    fit: BoxFit.contain,
  );
}
