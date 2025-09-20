import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traning_uni_2/core/logic/texts.dart';
import 'package:traning_uni_2/core/logic/textstyle.dart';
import 'package:traning_uni_2/core/ui/logo_image.dart';
import 'package:traning_uni_2/core/ui/password_textfield.dart';
import 'package:traning_uni_2/core/ui/saudi_phone.dart';
import 'package:traning_uni_2/core/ui/login_text_and_textbutton.dart';
import 'package:traning_uni_2/core/ui/text_form_field.dart';

class ClientRegisterView extends StatelessWidget {
  const ClientRegisterView({super.key});

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
                SizedBox(height: 8.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'يمكنك تسجيل حساب جديد الأن',
                    style: styleWidgetSpan(),
                  ),
                ),
                SizedBox(height: 23.h),
                const TextFormFieldWidget(
                  labelText: 'اسم المستخدم',
                  prefixIcon: 'assets/icons/useremail.png',
                ),
                SizedBox(height: 16.h),
                const SaudiPhone(),
                SizedBox(height: 16.h),
                const TextFormFieldWidget(
                  labelText: 'المدينة',
                  prefixIcon: 'assets/icons/report.png',
                ),
                SizedBox(height: 16.h),
                const PasswordTextfield(),
                SizedBox(height: 16.h),
                const PasswordTextfield(),
                SizedBox(height: 24.h),
                FilledButton(onPressed: () {}, child: const Text('تسجيل')),
                SizedBox(height: 28.h),
                const LoginTextAndTextbutton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
