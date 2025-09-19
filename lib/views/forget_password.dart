import 'package:flutter/material.dart';
import 'package:traning_uni_2/core/logic/texts.dart';
import 'package:traning_uni_2/core/logic/textstyle.dart';
import 'package:traning_uni_2/core/ui/logo_image.dart';
import 'package:traning_uni_2/core/ui/saudi_phone.dart';
import 'package:traning_uni_2/core/ui/text_and_textbutton.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
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
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'أدخل رقم الجوال المرتبط بحسابك',
                    style: styleWidgetSpan(),
                  ),
                ),
                const SizedBox(height: 30),
                SaudiPhone(),
                const SizedBox(height: 24),
                FilledButton(
                  onPressed: () {},
                  child: const Text('تأكيد رقم الجوال'),
                ),
                const SizedBox(height: 390),
                TextAndTextbutton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
