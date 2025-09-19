import 'package:flutter/material.dart';
import 'package:traning_uni_2/core/logic/texts.dart';
import 'package:traning_uni_2/core/logic/textstyle.dart';
import 'package:traning_uni_2/core/ui/logo_image.dart';
import 'package:traning_uni_2/core/ui/password_textfield.dart';
import 'package:traning_uni_2/core/ui/saudi_phone.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(18),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(child: LogoImage()),
                const SizedBox(height: 16),
                Align(alignment: Alignment.centerRight, child: helloAgainText),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'يمكنك تسجيل الدخول الأن',
                    style: styleWidgetSpan(),
                  ),
                ),
                const SizedBox(height: 12),
                const PasswordTextfield(),
                const SizedBox(height: 24),
                SaudiPhone(),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('نسيت كلمة المرور ؟', style: styleWidgetSpan()),
                ),
                const SizedBox(height: 26),
                FilledButton(
                  onPressed: () {},
                  child: const Text('تسجيل الدخول'),
                ),
                const SizedBox(height: 270),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ليس لديك حساب ؟ ',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextButton(onPressed: () {}, child: Text('تسجيل الأن')),
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
