import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traning_uni_2/core/logic/navigate.dart';
import 'package:traning_uni_2/core/logic/texts.dart';
import 'package:traning_uni_2/core/logic/textstyle.dart';
import 'package:traning_uni_2/core/ui/logo_image.dart';
import 'package:traning_uni_2/core/ui/password_textfield.dart';
import 'package:traning_uni_2/core/ui/login_text_and_textbutton.dart';
import 'package:traning_uni_2/views/activate_account/view.dart';

class CreateNewPasswordView extends StatelessWidget {
  const CreateNewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: SingleChildScrollView(
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
                  SizedBox(height: 12.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'أدخل كلمة المرور الجديدة',
                      style: styleWidgetSpan(),
                    ),
                  ),
                  SizedBox(height: 18.h),
                  const PasswordTextfield(),
                  SizedBox(height: 16.h),
                  const PasswordTextfield(),
                  SizedBox(height: 26.h),
                  FilledButton(
                    onPressed: () {
                      goTo(context, ActivateAccountView());
                    },
                    child: const Text('تغيير كلمة المرور'),
                  ),
                  SizedBox(height: 242.h),
                  const LoginTextAndTextbutton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
