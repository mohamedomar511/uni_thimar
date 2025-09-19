import 'package:flutter/material.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 20),
        filled: true,
        fillColor: const Color(0xffFFFFFF),
        prefixIcon: Image.asset('assets/icons/Phone.png'),
        labelText: 'رقم الجوال',
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
