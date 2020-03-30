import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());



class XylophoneApp extends StatelessWidget {

  Expanded colorButton({Color color,int audioNumber}){
  return Expanded(
                child: FlatButton(
                  child: null,
                  color: color,
                  onPressed:(){
                    playAudio(audioNumber);
               },
             )
          );
}

  void playAudio (int audioNumber){
    final player = AudioCache();
    player.play('note$audioNumber.wav');
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
              colorButton(color: Colors.red,audioNumber: 1),
              colorButton(color: Colors.blue,audioNumber: 2),
              colorButton(color: Colors.purple,audioNumber: 3),
              colorButton(color: Colors.yellow,audioNumber: 4),
              colorButton(color: Colors.green,audioNumber: 5),
              colorButton(color: Colors.pink,audioNumber: 6),
              colorButton(color: Colors.orange,audioNumber: 7),
            ],
            ),
        ),
      ),
    );
  }
}