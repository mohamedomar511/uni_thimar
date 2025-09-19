import 'package:flutter/material.dart';
import 'package:traning_uni_2/core/logic/texts.dart';
import 'package:traning_uni_2/core/logic/textstyle.dart';
import 'package:traning_uni_2/core/ui/logo_image.dart';
import 'package:traning_uni_2/core/ui/password_textfield.dart';
import 'package:traning_uni_2/core/ui/saudi_phone.dart';
import 'package:traning_uni_2/core/ui/text_and_textbutton.dart';
import 'package:traning_uni_2/core/ui/text_form_field.dart';

class ClientRegister extends StatelessWidget {
  const ClientRegister({super.key});

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
                const Center(child: LogoImage()),
                const SizedBox(height: 16),
                Align(alignment: Alignment.centerRight, child: helloAgainText),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'يمكنك تسجيل حساب جديد الأن',
                    style: styleWidgetSpan(),
                  ),
                ),
                const SizedBox(height: 23),
                TextFormFieldWidget(
                  labelText: 'اسم المستخدم',
                  prefixIcon: 'assets/icons/useremail.png',
                ),
                const SizedBox(height: 16),
                const SaudiPhone(),
                const SizedBox(height: 16),
                TextFormFieldWidget(
                  labelText: 'المدينة',
                  prefixIcon: 'assets/icons/Report.png',
                ),
                const SizedBox(height: 16),
                PasswordTextfield(),
                const SizedBox(height: 16),
                PasswordTextfield(),
                const SizedBox(height: 24),
                FilledButton(onPressed: () {}, child: const Text('تسجيل')),
                const SizedBox(height: 70),
                const TextAndTextbutton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
