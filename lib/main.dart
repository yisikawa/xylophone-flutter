import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('node$soundNumber.wav');
  }

  Expanded buildkey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red, soundNumber: 1),
              buildkey(color: Colors.orange, soundNumber: 2),
              buildkey(color: Colors.blue, soundNumber: 3),
              buildkey(color: Colors.lightGreen, soundNumber: 4),
              buildkey(color: Colors.amber, soundNumber: 5),
              buildkey(color: Colors.deepPurpleAccent, soundNumber: 6),
              buildkey(color: Colors.cyanAccent, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
