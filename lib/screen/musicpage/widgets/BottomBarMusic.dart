import 'package:flutter/material.dart';

class BottomBarMusic extends StatelessWidget {
  const BottomBarMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () { print("Repeat");}, icon: Icon(Icons.repeat,color: Colors.white,)),
        Container(
          width: 150,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () { print("Retour en arrière");}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
              IconButton(onPressed: () { print("Pause");}, icon: Icon(Icons.pause,color: Colors.white,)),
              IconButton(onPressed: () { print("Avancer");}, icon: Icon(Icons.arrow_forward,color: Colors.white,)),
            ],
          ),
        ),
        IconButton(onPressed: () { print("Telecharger");}, icon: Icon(Icons.download,color: Colors.white,)),
      ],
    );
  }
}
