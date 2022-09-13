import 'package:flutter/material.dart';

class SliderMusic extends StatelessWidget {
  const SliderMusic({Key? key, required this.currentTime, required this.callback, required this.timer}) : super(key: key);

  final double currentTime;
  final double timer;
  final Function callback;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          inactiveColor: Colors.grey[600],
          value: currentTime,
          max: timer,
          onChanged: (value) => callback(value),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              timerModal(currentTime),
              style: const TextStyle(color: Colors.white),
            ),
            Text(
              timerModal(timer),
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }

  String timerModal(double time){
    int seconde = (time % 60).floor();
    int minute = (time / 60).floor();
    String formatMinute = (minute < 10 ) ? "0$minute" : "$minute";
    String formatSeconde = (seconde < 10) ? "0$seconde" : "$seconde" ;
    return "$formatMinute:$formatSeconde";
  }
}
