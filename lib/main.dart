import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int noteNumber, Color buttonColor}) {
    return Expanded(
      child: FlatButton(
        child: null,
        onPressed: () {
          playSound(noteNumber);
        },
        color: buttonColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(noteNumber: 1, buttonColor: Colors.red),
              buildKey(noteNumber: 2, buttonColor: Colors.orange),
              buildKey(noteNumber: 3, buttonColor: Colors.yellow),
              buildKey(noteNumber: 4, buttonColor: Colors.green),
              buildKey(noteNumber: 5, buttonColor: Colors.teal),
              buildKey(noteNumber: 6, buttonColor: Colors.blue),
              buildKey(noteNumber: 7, buttonColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
