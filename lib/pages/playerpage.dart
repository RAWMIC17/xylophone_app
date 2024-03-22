//import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class XylophoneAppPage extends StatelessWidget {
  const XylophoneAppPage({super.key});

  void playsSound(int soundnumber) { //to trigger specific sound to play
    final player = AudioPlayer();
    player.play(AssetSource("note$soundnumber.wav"));
  }

  Expanded buildkey({ Color color = Vx.black,int soundnumber=1}) {//to optimize code with functions and reduce number of lines
    return Expanded(
      child: TextButton(
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1))),
              backgroundColor: MaterialStatePropertyAll(color)),
          onPressed: () {
            playsSound(soundnumber);
          },
          child: Container() //"Click Me".text.xl.make(),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.black,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildkey(color: Colors.red,soundnumber: 1),
          buildkey(color: Colors.orange, soundnumber: 2),
          buildkey(color: Colors.yellow, soundnumber: 3),
          buildkey(color: Colors.green, soundnumber: 4),
          buildkey(color: Colors.teal, soundnumber: 5),
          buildkey(color: Colors.blue, soundnumber: 6),
          buildkey(color: Colors.purple, soundnumber: 7),
          // Expanded(
          //   child: TextButton(
          //       style: ButtonStyle(
          //           shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(1))),
          //           backgroundColor: MaterialStatePropertyAll(Vx.red600)),
          //       onPressed: () {
          //         playsSound(1);
          //       },
          //       child: Container() //"Click Me".text.xl.make(),
          //       ),
          // ),
          // Expanded(
          //   child: TextButton(
          //       style: ButtonStyle(
          //         shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(1))),
          //           backgroundColor: MaterialStatePropertyAll(Vx.orange600)),
          //       onPressed: () {
          //         playsSound(2);
          //       },
          //       child: Container() //"Click Me".text.xl.make(),
          //       ),
          // ),

          // Expanded(
          //   child: TextButton(
          //       style: ButtonStyle(
          //         shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(1))),
          //           backgroundColor: MaterialStatePropertyAll(Vx.green600)),
          //       onPressed: () {
          //         playsSound(4);
          //       },
          //       child: Container() //"Click Me".text.xl.make(),
          //       ),
          // ),
          // Expanded(
          //   child: TextButton(
          //       style: ButtonStyle(
          //         shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(1))),
          //           backgroundColor: MaterialStatePropertyAll(Vx.teal500)),
          //       onPressed: () {
          //         playsSound(5);
          //       },
          //       child: Container() //"Click Me".text.xl.make(),
          //       ),
          // ),
          // Expanded(
          //   child: TextButton(
          //       style: ButtonStyle(
          //         shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(1))),
          //           backgroundColor: MaterialStatePropertyAll(Vx.blue600)),
          //       onPressed: () {
          //         playsSound(6);
          //       },
          //       child: Container() //"Click Me".text.xl.make(),
          //       ),
          // ),
          // Expanded(
          //   child: TextButton(
          //       style: ButtonStyle(
          //         shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(1))),
          //           backgroundColor: MaterialStatePropertyAll(Vx.purple600)),
          //       onPressed: () {
          //         playsSound(7);
          //       },
          //       child: Container() //"Click Me".text.xl.make(),
          //       ),
          // ),
        ],
      )),
    );
  }
}
