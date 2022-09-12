import 'package:flutter/material.dart';
import 'package:spotiwish/screen/musicpage/widgets/AppBarMusic.dart';
import 'package:spotiwish/screen/musicpage/widgets/BottomBarMusic.dart';
import 'package:spotiwish/screen/musicpage/widgets/SliderMusic.dart';

class MyMusicPage extends StatefulWidget {
  const MyMusicPage({Key? key}) : super(key: key);

  @override
  State<MyMusicPage> createState() => _MyMusicPageState();
}

class _MyMusicPageState extends State<MyMusicPage> {
  double _currentTime = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMusic(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Titre 1", style: TextStyle(color: Colors.white)),
              Text("Image", style: TextStyle(color: Colors.white)),
              Text("Titre + Artiste", style: TextStyle(color: Colors.white)),
              SliderMusic(currentTime: _currentTime, callback: changeTimeValue,),
              BottomBarMusic(),
            ],
          ),
        ),
      ),
    );
  }
  void changeTimeValue(double value){
    setState(() {
      _currentTime = value;
    });
  }
}
