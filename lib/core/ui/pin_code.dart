import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCode extends StatelessWidget {
  const PinCode({super.key, required this.controller, required this.onChanged});
  final TextEditingController controller;
  final void Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      controller: controller,
      keyboardType: TextInputType.number,
      enableActiveFill: true,
      textStyle: const TextStyle(color: Color(0xffffffff)),
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(16),
        fieldHeight: 62,
        fieldWidth: 72,
        activeFillColor: Theme.of(context).primaryColor,
        inactiveFillColor: const Color(0xffffffff),
        selectedFillColor: Theme.of(context).primaryColor,
        activeColor: Theme.of(context).primaryColor,
        inactiveColor: const Color(0xffF3F3F3),
        selectedColor: Theme.of(context).primaryColor,
        selectedBorderWidth: 0,
        inactiveBorderWidth: 1,
      ),
      onChanged: onChanged,
    );
  }
}
