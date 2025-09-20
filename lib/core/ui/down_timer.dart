import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DownTimer extends StatelessWidget {
  const DownTimer({super.key, required this.onComplete});
  final VoidCallback? onComplete;
  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      width: 66.w,
      height: 69.h,
      duration: 90,
      fillColor: Theme.of(context).primaryColor,
      ringColor: const Color(0xffD8D8D8),
      strokeWidth: 6,
      isReverseAnimation: true,
      textStyle: TextStyle(
        fontSize: 21.sp,
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.bold,
      ),
      textFormat: CountdownTextFormat.MM_SS,
      isReverse: true,
      onComplete: onComplete,
    );
  }
}
