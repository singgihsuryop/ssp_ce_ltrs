import 'package:flutter/material.dart';
import 'package:ssp_ce_flutter/learn_speech/speech_page_layout.dart';
import 'package:ssp_ce_flutter/sound.dart';
import 'package:ssp_ce_flutter/sound_populator.dart';

class Shape3DSpeechPage extends StatefulWidget {
  const Shape3DSpeechPage({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();

  static const BottomNavigationBarItem getNavBarItem = BottomNavigationBarItem(
    icon: Icon(Icons.adb),
    label: 'Bentuk 3D',
    backgroundColor: Colors.teal,
  );
}

class _MyAppState extends State<Shape3DSpeechPage> {
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.redAccent,
        ),
        child: buildSpeechPageLayout(buildContext, soundsData),
      ),
    );
  }
}

final List<Sound> soundsData = [
  Sound("1", "shape3d", "kubus", "kubus.mp3", "", Colors.redAccent),
  Sound("2", "shape3d", "balok", "balok.mp3", "", Colors.orangeAccent),
  Sound("3", "shape3d", "kerucut", "kerucut.mp3", "", Colors.yellowAccent),
  Sound("4", "shape3d", "prismasegitiga", "prismasegitiga.mp3", "",
      Colors.greenAccent),
  Sound("5", "shape3d", "limas", "limas.mp3", "", Colors.blueAccent),
  Sound("6", "shape3d", "prismasegilima", "prismasegilima.mp3", "",
      Colors.purpleAccent),
  Sound("7", "shape3d", "tabung", "tabung.mp3", "", Colors.lime),
  Sound("8", "shape3d", "bola", "bola.mp3", "", Colors.lightGreen),
  Sound("9", "shape3d", "bola", "bola.mp3", "", Colors.lightGreen),
  Sound("10", "shape3d", "bola", "bola.mp3", "", Colors.lightGreen),
];
