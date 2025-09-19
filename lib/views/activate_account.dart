import 'package:flutter/material.dart';
import 'package:traning_uni_2/core/ui/otp_widget.dart';

class ActivateAccount extends StatelessWidget {
  const ActivateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OtpWidget(text: 'تفعيل الحساب'));
  }
}
