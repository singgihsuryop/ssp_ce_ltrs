import 'package:flutter/material.dart';
import 'package:ssp_ce_flutter/sound.dart';
import 'package:ssp_ce_flutter/sound_populator.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: soundPopulator.populateData(
            soundsData, MediaQuery.of(context).orientation),
      ),
    );
  }
}

final List<Sound> soundsData = [
  Sound("1", "shape2d", "bujursangkar", "bujursangkar.mp3", "square.png",
      Colors.red),
  Sound("2", "shape2d", "lingkaran", "lingkaran.mp3", "circle.png",
      Colors.orange),
  Sound("3", "shape2d", "persegipanjang", "persegipanjang.mp3", "rcctangle.png",
      Colors.yellow),
  Sound(
      "4", "shape2d", "segilima", "segilima.mp3", "pentagon.png", Colors.green),
  Sound("5", "shape2d", "setengahlinkaran", "setengahlinkaran.mp3",
      "halfcircle.png", Colors.blue),
  Sound("6", "shape2d", "jajargenjang", "jajargenjang.mp3", "jajargenjang.png",
      Colors.purple),
  Sound("7", "shape2d", "trapesium", "trapesium.mp3", "", Colors.black),
  Sound("8", "shape2d", "oval", "oval.mp3", "", Colors.white),
  Sound("9", "shape2d", "belahketupat", "belahketupat.mp3", "", Colors.brown),
  Sound("10", "shape2d", "segitiga", "segitiga.mp3", "lion.png", Colors.pink)
];
