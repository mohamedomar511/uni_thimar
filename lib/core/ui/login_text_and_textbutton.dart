import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traning_uni_2/core/logic/navigate.dart';
import 'package:traning_uni_2/views/login/view.dart';

class LoginTextAndTextbutton extends StatelessWidget {
  const LoginTextAndTextbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'لديك حساب بالفعل ؟ ',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
        TextButton(
          onPressed: () {
            goTo(context, LoginView());
          },
          child: const Text('تسجيل الدخول'),
        ),
      ],
    );
  }
}
