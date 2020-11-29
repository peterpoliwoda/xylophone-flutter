import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

final player = new AudioCache();

Expanded buildXyloKey({int note, Color color}) => Expanded(
      child: FlatButton(
        color: color,
        onPressed: () => player.play('note$note.wav'),
        child: null,
      ),
    );

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildXyloKey(note: 1, color: Colors.red),
              buildXyloKey(note: 2, color: Colors.orange),
              buildXyloKey(note: 3, color: Colors.yellow),
              buildXyloKey(note: 4, color: Colors.green),
              buildXyloKey(note: 5, color: Colors.teal),
              buildXyloKey(note: 6, color: Colors.blue),
              buildXyloKey(note: 7, color: Colors.purple),
              buildXyloKey(note: 8, color: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }
}
