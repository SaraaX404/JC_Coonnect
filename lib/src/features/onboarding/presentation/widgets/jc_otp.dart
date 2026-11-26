import 'package:flutter/services.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:material_ui/material_ui.dart';

class JcOtp extends StatelessWidget {
  const JcOtp({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) => _OtpSlots(controller: controller);
}

class _OtpSlots extends StatefulWidget {
  const _OtpSlots({required this.controller});
  final TextEditingController controller;

  @override
  State<_OtpSlots> createState() => _OtpSlotsState();
}

class _OtpSlotsState extends State<_OtpSlots> {
  @override
  Widget build(BuildContext context) {
    final value = widget.controller.text;
    return SizedBox(
      height: 52,
      child: Stack(
        children: [
          Positioned.fill(
            child: TextField(
              controller: widget.controller,
              maxLength: 6,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              autofocus: true,
              onChanged: (_) => setState(() {}),
              style: const TextStyle(color: Colors.transparent),
              cursorColor: Colors.transparent,
              decoration: const InputDecoration(
                counterText: '',
                border: InputBorder.none,
              ),
            ),
          ),
          IgnorePointer(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(6, (index) {
                final active = index == value.length;
                return Container(
                  width: 48,
                  height: 52,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: active ? JcColors.primary : JcColors.border,
                      width: active ? 2 : 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    index < value.length
                        ? value[index]
                        : active
                        ? '|'
                        : '',
                    style: const TextStyle(fontSize: 20),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
