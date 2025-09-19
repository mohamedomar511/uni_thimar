import 'package:flutter/material.dart';
import 'package:traning_uni_2/core/logic/textstyle.dart';
import 'package:traning_uni_2/core/ui/down_timer.dart';
import 'package:traning_uni_2/core/ui/logo_image.dart';
import 'package:traning_uni_2/core/ui/pin_code.dart';
import 'package:traning_uni_2/core/ui/text_and_textbutton.dart';

class OtpWidget extends StatefulWidget {
  const OtpWidget({super.key, required this.text});
  final String text;
  @override
  State<OtpWidget> createState() => _OtpWidgetState();
}

class _OtpWidgetState extends State<OtpWidget> {
  bool timerComplete = true;
  final pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const LogoImage(),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  widget.text,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'أدخل الكود المكون من 4 أرقام المرسل علي رقم الجوال',
                      style: styleWidgetSpan(),
                    ),
                    WidgetSpan(
                      child: Row(
                        children: [
                          Text(
                            '+9660548745',
                            textDirection: TextDirection.ltr,
                            style: styleWidgetSpan(),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'تغيير رقم الجوال',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 26),
              PinCode(
                controller: pinController,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              const SizedBox(height: 30),
              FilledButton(
                onPressed: pinController.text.length == 4 ? () {} : null,
                child: Text('تأكيد الكود'),
              ),
              const SizedBox(height: 20),
              Text(
                'لم تستلم الكود ؟\nيمكنك إعادة إرسال الكود بعد',
                style: styleWidgetSpan(),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              if (timerComplete)
                DownTimer(
                  onComplete: () {
                    timerComplete = false;
                    setState(() {});
                  },
                ),
              const SizedBox(height: 20),
              if (!timerComplete)
                Center(
                  child: OutlinedButton(
                    onPressed: () {
                      timerComplete = true;
                      setState(() {});
                    },
                    child: Text('إعادة الإرسال'),
                  ),
                ),
              const SizedBox(height: 95),
              Padding(
                padding: timerComplete
                    ? const EdgeInsets.only(top: 60)
                    : const EdgeInsets.only(top: 81),
                child: TextAndTextbutton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
