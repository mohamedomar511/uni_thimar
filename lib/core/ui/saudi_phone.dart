import 'package:flutter/material.dart';

class SaudiPhone extends StatelessWidget {
  const SaudiPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 63,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xffFFFFFF),
            border: Border.all(color: Color(0xffF3F3F3)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/saudi.png'),
              Text(
                '+966',
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 20),
              filled: true,
              fillColor: const Color(0xffFFFFFF),
              prefixIcon: Image.asset('assets/icons/Phone.png'),
              labelText: 'رقم الجوال',
              labelStyle: TextStyle(
                fontSize: 16,
                color: Color(0xffAFAFAF),
                fontWeight: FontWeight.w400,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: Color(0xffF3F3F3),
                  width: 2,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: Color(0xffF3F3F3),
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: Color(0xffF3F3F3),
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
