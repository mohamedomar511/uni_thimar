import 'package:flutter/material.dart';
import 'package:traning_uni_2/core/logic/texts.dart';
import 'package:traning_uni_2/core/logic/textstyle.dart';
import 'package:traning_uni_2/core/ui/logo_image.dart';
import 'package:traning_uni_2/core/ui/password_textfield.dart';
import 'package:traning_uni_2/core/ui/text_and_textbutton.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  LogoImage(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: forgetPasswordText,
                  ),
                  const SizedBox(height: 12),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'أدخل كلمة المرور الجديدة',
                      style: styleWidgetSpan(),
                    ),
                  ),
                  const SizedBox(height: 18),
                  const PasswordTextfield(),
                  const SizedBox(height: 16),
                  const PasswordTextfield(),
                  const SizedBox(height: 26),
                  FilledButton(
                    onPressed: () {},
                    child: const Text('تغيير كلمة المرور'),
                  ),
                  const SizedBox(height: 280),
                  TextAndTextbutton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
