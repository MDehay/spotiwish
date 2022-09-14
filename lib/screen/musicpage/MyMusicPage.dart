import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spotiwish/modal/Song.dart';
import 'package:spotiwish/screen/musicpage/widgets/AppBarMusic.dart';
import 'package:spotiwish/screen/musicpage/widgets/BottomBarMusic.dart';
import 'package:spotiwish/screen/musicpage/widgets/CoverAlbum.dart';
import 'package:spotiwish/screen/musicpage/widgets/InformationMusic.dart';
import 'package:spotiwish/screen/musicpage/widgets/SliderMusic.dart';
import 'package:spotiwish/service/constantData.dart';

class MyMusicPage extends StatefulWidget {
  const MyMusicPage({Key? key}) : super(key: key);

  @override
  State<MyMusicPage> createState() => _MyMusicPageState();
}

class _MyMusicPageState extends State<MyMusicPage> {
  double _currentTime = 0.0;
  int _index = 0;
  bool _isPlay = false;
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    Song currentAlbum = album_test.songs[_index];
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
              InformationMusic(
                  titre: album_test.name,
                  artiste: "${_index + 1} of ${album_test.songs.length}",
                  height: 40,
                  titleSize: 16,
                  artisteSize: 10),
              CoverAlbum(asset_path: album_test.asset_url),
              InformationMusic(
                  titre: currentAlbum.name, artiste: currentAlbum.artiste),
              SliderMusic(
                timer: (currentAlbum.time).toDouble(),
                currentTime: _currentTime,
                callback: changeTimeValue,
              ),
              BottomBarMusic(
                callback: changeMusic,
                callbackAudio: play,
                isPlay: _isPlay,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void changeMusic(bool isNext) {
    setState(() {
      if (isNext) {
        if (_index + 1 == album_test.songs.length) {
          _index = 0;
        } else {
          _index++;
        }
      } else {
        if (_index - 1 < 0) {
          _index = album_test.songs.length - 1;
        } else {
          _index--;
        }
      }
      _currentTime = 0.0;
    });
  }

  void changeTimeValue(double value) {
    setState(() {
      _currentTime = value;
    });
  }

  Future<void> play() async{
    if(_isPlay){
      await _audioPlayer.pause();
    } else{
      await _audioPlayer.play(DeviceFileSource(album_test.songs[_index].song_url));
    }
    setState(() {
      _isPlay = !_isPlay;
    });
  }
}
