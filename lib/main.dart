import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final List<Color> rainbowColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];

  _playAudio(int i) async {
    final player = AudioPlayer();
    int imageIndex = i + 1;
    await player.play(AssetSource('note$imageIndex.wav'));
  }

  Expanded _playButton(int i) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: rainbowColors[i],
        child: TextButton(
          onPressed: () async {
            _playAudio(i);
          },
          child: Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              _playButton(0),
              _playButton(1),
              _playButton(2),
              _playButton(3),
              _playButton(4),
              _playButton(5),
              _playButton(6),
            ],
          ),
        ),
      ),
    );
  }
}
