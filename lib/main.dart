import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: null,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note1.wav');
                    },
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: null,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note2.wav');
                    },
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: null,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note3.wav');
                    },
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: null,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note4.wav');
                    },
                    color: Colors.orange,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: null,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note5.wav');
                    },
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: null,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note6.wav');
                    },
                    color: Colors.tealAccent,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: null,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note7.wav');
                    },
                    color: Colors.pinkAccent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
