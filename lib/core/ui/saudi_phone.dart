import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SaudiPhone extends StatelessWidget {
  const SaudiPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 63.h,
          width: 70.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: const Color(0xffFFFFFF),
            border: Border.all(color: const Color(0xffF3F3F3)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/saudi.png'),
              Text(
                '+966',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 20.h),
              filled: true,
              fillColor: const Color(0xffFFFFFF),
              prefixIcon: Image.asset('assets/icons/phone.png'),
              labelText: 'رقم الجوال',
              labelStyle: TextStyle(
                fontSize: 16.sp,
                color: const Color(0xffAFAFAF),
                fontWeight: FontWeight.w400,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: const BorderSide(
                  color: Color(0xffF3F3F3),
                  width: 2,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: const BorderSide(
                  color: Color(0xffF3F3F3),
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: const BorderSide(
                  color: Color(0xffF3F3F3),
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
