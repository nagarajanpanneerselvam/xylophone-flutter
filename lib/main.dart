import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  play(int soundId) {
    print('Playing $soundId');
    final player = AudioPlayer();
    player.play(AssetSource('note$soundId.wav'));
  }

  Widget getExpandWiget({Color color, int noteID}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          play(noteID);
        },
        child: Container(
          color: color,
        ),
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
            children: [
              getExpandWiget(color: Colors.red, noteID: 1),
              getExpandWiget(color: Colors.orange, noteID: 2),
              getExpandWiget(color: Colors.yellow, noteID: 3),
              getExpandWiget(color: Colors.green, noteID: 4),
              getExpandWiget(color: Colors.green.shade900, noteID: 5),
              getExpandWiget(color: Colors.blue, noteID: 6),
              getExpandWiget(color: Colors.purple, noteID: 7),
            ],
          ),
        ),
      ),
    );
  }
}
