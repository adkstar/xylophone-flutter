import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              getAudioPlayButton(Colors.red, 1),
              getAudioPlayButton(Colors.orange, 2),
              getAudioPlayButton(Colors.yellow, 3),
              getAudioPlayButton(Colors.green, 4),
              getAudioPlayButton(Colors.teal, 5),
              getAudioPlayButton(Colors.blue, 6),
              getAudioPlayButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}

Widget getAudioPlayButton(Color color, int index) {
  return Expanded(
    child: FlatButton(
      onPressed: () {
        playAudio(index);
      },
      color: color,
    ),
  );
}

void playAudio(int index) {
  final player = AudioCache();
  player.play('note$index.wav');
}
