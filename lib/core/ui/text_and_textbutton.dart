import 'package:flutter/material.dart';

class TextAndTextbutton extends StatelessWidget {
  const TextAndTextbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'لديك حساب بالفعل ؟ ',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
        ),
        TextButton(onPressed: () {}, child: Text('تسجيل الدخول')),
      ],
    );
  }
}
