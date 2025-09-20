import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traning_uni_2/core/logic/navigate.dart';
import 'package:traning_uni_2/core/logic/texts.dart';
import 'package:traning_uni_2/core/logic/textstyle.dart';
import 'package:traning_uni_2/core/ui/logo_image.dart';
import 'package:traning_uni_2/core/ui/saudi_phone.dart';
import 'package:traning_uni_2/core/ui/login_text_and_textbutton.dart';
import 'package:traning_uni_2/views/verify_otp/view.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0.r),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const LogoImage(),
                Align(
                  alignment: Alignment.centerRight,
                  child: forgetPasswordText,
                ),
                SizedBox(height: 8.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'أدخل رقم الجوال المرتبط بحسابك',
                    style: styleWidgetSpan(),
                  ),
                ),
                SizedBox(height: 30.h),
                const SaudiPhone(),
                SizedBox(height: 24.h),
                FilledButton(
                  onPressed: () {
                    goTo(context, VerifyOtpView());
                  },
                  child: const Text('تأكيد رقم الجوال'),
                ),
                SizedBox(height: 330.h),
                const LoginTextAndTextbutton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
