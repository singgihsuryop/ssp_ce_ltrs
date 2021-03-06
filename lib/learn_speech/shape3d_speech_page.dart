import 'package:flutter/material.dart';
import 'package:ssp_ce_ltrs/learn_speech/speech_page_layout.dart';
import 'package:ssp_ce_ltrs/sound.dart';
import 'package:ssp_ce_ltrs/sound_populator.dart';

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
        child: buildSpeechPageLayout(buildContext, soundsData, 2, 4),
      ),
    );
  }
}

final List<Sound> soundsData = [
  Sound.svgDisplay("1", "shape3d", "kubus", "kubus.mp3", "shape3d_cube.svg",
      Colors.redAccent, Colors.black),
  Sound.svgDisplay("2", "shape3d", "balok", "balok.mp3", "shape3d_block.svg",
      Colors.orangeAccent, Colors.black),
  Sound.svgDisplay("3", "shape3d", "kerucut", "kerucut.mp3", "shape3d_cone.svg",
      Colors.yellowAccent, Colors.black),
  Sound.svgDisplay("4", "shape3d", "prismasegitiga", "prismasegitiga.mp3",
      "shape3d_triangle_3d.svg", Colors.greenAccent, Colors.black),
  Sound.svgDisplay("5", "shape3d", "limas", "limas.mp3", "shape3d_pyramid.svg",
      Colors.blueAccent, Colors.black),
  Sound.svgDisplay("6", "shape3d", "prismasegilima", "prismasegilima.mp3",
      "shape3d_cylinder-5.svg", Colors.purpleAccent, Colors.black),
  Sound.svgDisplay("7", "shape3d", "tabung", "tabung.mp3",
      "shape3d_cylinder.svg", Colors.lime, Colors.black),
  Sound.svgDisplay("8", "shape3d", "bola", "bola.mp3", "shape3d_ball.svg",
      Colors.lightGreen, Colors.black)
];
