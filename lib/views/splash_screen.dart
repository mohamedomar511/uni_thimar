import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:traning_uni_2/core/logic/navigate.dart';
import 'package:traning_uni_2/core/ui/logo_image.dart';
import 'package:traning_uni_2/views/verify_otp.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeInLeftBig(
        duration: const Duration(seconds: 3),
        onFinish: (direction) => goTo(context, VerifyOtp()),
        child: const LogoImage(),
      ),
    );
  }
}
