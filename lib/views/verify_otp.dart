import 'package:flutter/material.dart';
import 'package:traning_uni_2/core/ui/otp_widget.dart';

class VerifyOtp extends StatelessWidget {
  const VerifyOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OtpWidget(text: 'نسيت كلمة المرور'));
  }
}
