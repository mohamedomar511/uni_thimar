import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class DownTimer extends StatelessWidget {
  const DownTimer({super.key, required this.onComplete});
  final VoidCallback? onComplete;
  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      width: 66,
      height: 69,
      duration: 90,
      fillColor: Theme.of(context).primaryColor,
      ringColor: Color(0xffD8D8D8),
      strokeWidth: 6,
      isReverseAnimation: true,
      textStyle: TextStyle(
        fontSize: 21,
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.bold,
      ),
      textFormat: CountdownTextFormat.MM_SS,
      isReverse: true,
      onComplete: onComplete,
    );
  }
}
