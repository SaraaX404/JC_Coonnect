import 'package:flutter/services.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:material_ui/material_ui.dart';

/// Figma MFA "Input Wrapper": six 44x44 boxes, 4px apart, over one hidden
/// text field so paste, autofill and backspace work like a normal input.
class JcOtp extends StatefulWidget {
  const JcOtp({super.key, required this.controller, this.onChanged});
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  static const length = 6;

  @override
  State<JcOtp> createState() => _JcOtpState();
}

class _JcOtpState extends State<JcOtp> {
  final _focus = FocusNode();

  @override
  void dispose() {
    _focus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final value = widget.controller.text;
    return SizedBox(
      height: 44,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: TextField(
              controller: widget.controller,
              focusNode: _focus,
              maxLength: JcOtp.length,
              keyboardType: TextInputType.number,
              autofillHints: const [AutofillHints.oneTimeCode],
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              autofocus: true,
              showCursor: false,
              onChanged: (code) {
                setState(() {});
                widget.onChanged?.call(code);
              },
              style: const TextStyle(color: Colors.transparent),
              decoration: const InputDecoration(
                counterText: '',
                border: InputBorder.none,
              ),
            ),
          ),
          IgnorePointer(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < JcOtp.length; i++) ...[
                  if (i > 0) const SizedBox(width: 4),
                  _OtpBox(
                    digit: i < value.length ? value[i] : '',
                    active: _focus.hasFocus && i == value.length,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _OtpBox extends StatelessWidget {
  const _OtpBox({required this.digit, required this.active});
  final String digit;
  final bool active;

  @override
  Widget build(BuildContext context) => Container(
    width: 44,
    height: 44,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: active ? JcColors.primary : JcColors.border),
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      boxShadow: const [
        BoxShadow(color: JcColors.shadow, blurRadius: 2, offset: Offset(0, 1)),
      ],
    ),
    child: Text(
      digit,
      style: const TextStyle(
        fontSize: 16,
        height: 1.5,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    ),
  );
}
