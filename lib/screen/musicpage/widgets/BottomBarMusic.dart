import 'package:flutter/material.dart';

class BottomBarMusic extends StatelessWidget {
  const BottomBarMusic({Key? key, required this.callback}) : super(key: key);
  final Function callback;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            print("Repeat");
          },
          icon: const Icon(
            Icons.repeat,
            color: Colors.white,
          ),
        ),
        Container(
          width: 150,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => callback(false),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  print("Pause");
                },
                icon: const Icon(
                  Icons.pause,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () => callback(true),
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {
            print("Telecharger");
          },
          icon: const Icon(
            Icons.download,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
