import 'package:flutter/material.dart';
import 'package:traning_uni_2/core/logic/navigate.dart';
import 'package:traning_uni_2/core/ui/otp_widget.dart';
import 'package:traning_uni_2/views/create_new_password/view.dart';

class VerifyOtpView extends StatelessWidget {
  const VerifyOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OtpWidget(
        text: 'نسيت كلمة المرور',
        onPressed: () {
          goTo(context, const CreateNewPasswordView());
        },
      ),
    );
  }
}
