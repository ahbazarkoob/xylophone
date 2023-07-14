// ignore_for_file: use_key_in_widget_constructors, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

var devW, devH;
void playSound(int soundNumber) async {
  final player = AudioPlayer();
  await player.play(AssetSource('note$soundNumber.wav'));
}

class Xylophone extends StatelessWidget {
  Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Xylophone')),
        ),
        body: Column(
          children: [
            Button(
              i: 1,
              buttonColor: Colors.red,
            ),
            Button(
              i: 2,
              buttonColor: Colors.orange,
            ),
            Button(
              i: 3,
              buttonColor: Colors.yellow,
            ),
            Button(
              i: 4,
              buttonColor: Colors.green,
            ),
            Button(
              i: 5,
              buttonColor: Colors.teal,
            ),
            Button(
              i: 6,
              buttonColor: Colors.blue,
            ),
            Button(
              i: 7,
              buttonColor: Colors.purple,
            ),
          ],
        ));
  }
}

class Button extends StatelessWidget {
  int i;
  var buttonColor;
  Button({required this.i,required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
          style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
          onPressed: () {
            playSound(i);
          },
          child: Container(
            
          )),
    );
  }
}
