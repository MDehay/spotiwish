import 'package:flutter/material.dart';

class SliderMusic extends StatelessWidget {
  const SliderMusic({Key? key, required this.currentTime, required this.callback}) : super(key: key);

  final double currentTime;
  final Function callback;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          inactiveColor: Colors.grey[600],
          value: currentTime,
          max: 100,
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
              timerModal(100),
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
    return "$minute:$seconde";
  }
}
