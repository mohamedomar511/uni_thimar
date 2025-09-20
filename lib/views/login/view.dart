import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traning_uni_2/core/logic/navigate.dart';
import 'package:traning_uni_2/core/logic/texts.dart';
import 'package:traning_uni_2/core/logic/textstyle.dart';
import 'package:traning_uni_2/core/ui/logo_image.dart';
import 'package:traning_uni_2/core/ui/password_textfield.dart';
import 'package:traning_uni_2/core/ui/saudi_phone.dart';
import 'package:traning_uni_2/views/client_register/view.dart';
import 'package:traning_uni_2/views/forget_password/view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.r),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Center(child: LogoImage()),
                Align(alignment: Alignment.centerRight, child: helloAgainText),
                SizedBox(height: 12.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'يمكنك تسجيل الدخول الأن',
                    style: styleWidgetSpan(),
                  ),
                ),
                SizedBox(height: 29.h),
                const PasswordTextfield(),
                SizedBox(height: 16.h),
                const SaudiPhone(),
                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {
                      goTo(context, ForgetPasswordView());
                    },
                    child: Text('نسيت كلمة المرور ؟', style: styleWidgetSpan()),
                  ),
                ),
                SizedBox(height: 26.h),
                FilledButton(
                  onPressed: () {},
                  child: const Text('تسجيل الدخول'),
                ),
                SizedBox(height: 196.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ليس لديك حساب ؟ ',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        goTo(context, ClientRegisterView());
                      },
                      child: const Text('تسجيل الأن'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
