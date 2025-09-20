import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordTextfield extends StatelessWidget {
  const PasswordTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 20.h),
        filled: true,
        fillColor: const Color(0xffFFFFFF),
        prefixIcon: Image.asset('assets/icons/unlock.png'),
        labelText: 'كلمة المرور',
        labelStyle: TextStyle(
          fontSize: 16.sp,
          color: const Color(0xffAFAFAF),
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
