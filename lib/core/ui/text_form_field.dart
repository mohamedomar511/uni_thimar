import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.labelText,
    required this.prefixIcon,
  });
  final String labelText;
  final String prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 20),
        filled: true,
        fillColor: const Color(0xffFFFFFF),
        prefixIcon: Image.asset(prefixIcon),
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 16,
          color: Color(0xffAFAFAF),
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xffF3F3F3), width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xffF3F3F3), width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xffF3F3F3), width: 2),
        ),
      ),
    );
  }
}
