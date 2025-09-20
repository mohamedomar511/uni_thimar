import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traning_uni_2/core/logic/textstyle.dart';
import 'package:traning_uni_2/core/ui/down_timer.dart';
import 'package:traning_uni_2/core/ui/logo_image.dart';
import 'package:traning_uni_2/core/ui/pin_code.dart';
import 'package:traning_uni_2/core/ui/login_text_and_textbutton.dart';

class OtpWidget extends StatefulWidget {
  const OtpWidget({super.key, required this.text, this.onPressed});
  final String text;
  final VoidCallback? onPressed;
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
        padding: EdgeInsets.all(16.r),
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
                    fontSize: 16.sp,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
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
                              style: TextStyle(fontSize: 16.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.h),
              PinCode(
                controller: pinController,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              SizedBox(height: 36.h),
              FilledButton(
                onPressed: pinController.text.length == 4
                    ? widget.onPressed
                    : null,
                child: Text('تأكيد الكود'),
              ),
              SizedBox(height: 20.h),
              Text(
                'لم تستلم الكود ؟\nيمكنك إعادة إرسال الكود بعد',
                style: styleWidgetSpan(),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.h),
              if (timerComplete)
                DownTimer(
                  onComplete: () {
                    timerComplete = false;
                    setState(() {});
                  },
                ),
              SizedBox(height: 20.h),
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
              SizedBox(height: 42.h),
              Padding(
                padding: timerComplete
                    ? EdgeInsets.only(top: 60.h)
                    : EdgeInsets.only(top: 81.h),
                child: const LoginTextAndTextbutton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
