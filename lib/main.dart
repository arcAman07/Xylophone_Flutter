import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());
void playSound(int a){
  final player = AudioCache();
  player.play('note$a.wav');
}
Widget buildKey(MaterialColor b,int c){
  return Expanded(
    child:TextButton(
      style:TextButton.styleFrom(
        backgroundColor: b,
      ),
      onPressed: (){
        playSound(c);
      },

    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red,1),
              buildKey(Colors.yellow,2),
              buildKey(Colors.brown,3),
              buildKey(Colors.orange,4),
              buildKey(Colors.green,5),
              buildKey(Colors.blue,6),
              buildKey(Colors.purple,7),

            ],
          ),
          ),
        ),
      );
  }
}
