import 'package:flutter/material.dart';
import 'package:ssp_ce_ltrs/learn_speech/speech_page_layout.dart';
import 'package:ssp_ce_ltrs/sound.dart';
import 'package:ssp_ce_ltrs/sound_populator.dart';

class Shape2DSpeechPage extends StatefulWidget {
  const Shape2DSpeechPage({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();

  static const BottomNavigationBarItem getNavBarItem = BottomNavigationBarItem(
    icon: Icon(Icons.adb),
    label: 'Bentuk 2D',
    backgroundColor: Colors.lightBlueAccent,
  );
}

class _MyAppState extends State<Shape2DSpeechPage> {
  List<Flexible> dataPerRow = [];
  final SoundPopulator soundPopulator = SoundPopulator();

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent,
        ),
        child: buildSpeechPageLayout(buildContext, soundsData),
      ),
    );
  }
}

final List<Sound> soundsData = [
  Sound.svgDisplay("1", "shape2d", "bujursangkar", "bujursangkar.mp3",
      "square.svg", Colors.red, Colors.black),
  Sound.svgDisplay("2", "shape2d", "lingkaran", "lingkaran.mp3", "circle.svg",
      Colors.orange, Colors.black),
  Sound.svgDisplay("4", "shape2d", "segilima", "segilima.mp3", "pentagon.svg",
      Colors.green, Colors.black),
  Sound.svgDisplay("6", "shape2d", "jajargenjang", "jajargenjang.mp3",
      "parallelogram.svg", Colors.purple, Colors.black),
  Sound.svgDisplay("7", "shape2d", "trapesium", "trapesium.mp3",
      "trapezoid.svg", Colors.cyan, Colors.black),
  Sound.svgDisplay("8", "shape2d", "oval", "oval.mp3", "oval.svg", Colors.white,
      Colors.black),
  Sound.svgDisplay("9", "shape2d", "belahketupat", "belahketupat.mp3",
      "diamond.svg", Colors.brown, Colors.black),
  Sound.svgDisplay("10", "shape2d", "segitiga", "segitiga.mp3", "triangle.svg",
      Colors.pink, Colors.black),

/*  Sound.svgDisplay("3", "shape2d", "persegipanjang", "persegipanjang.mp3",
      "rectangle.svg", Colors.yellow, Colors.black),
  Sound.svgDisplay("5", "shape2d", "setengahlingkaran", "setengahlingkaran.mp3",
      "halfcircle.svg", Colors.blue, Colors.black),
*/
];
