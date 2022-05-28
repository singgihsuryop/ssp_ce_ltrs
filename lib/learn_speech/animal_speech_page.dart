import 'package:flutter/material.dart';
import 'package:ssp_ce_ltrs/component_wrapper.dart';
import 'package:ssp_ce_ltrs/learn_speech/speech_page_layout.dart';
import 'package:ssp_ce_ltrs/sound.dart';
import 'package:ssp_ce_ltrs/sound_populator.dart';

class AnimalSpeechPage extends StatefulWidget {
  const AnimalSpeechPage({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();

  static const BottomNavigationBarItem getNavBarItem = BottomNavigationBarItem(
    icon: Icon(Icons.adb),
    label: 'Hewan',
    backgroundColor: Colors.red,
  );
}

class _MyAppState extends State<AnimalSpeechPage> {
  final SoundPopulator soundPopulator = SoundPopulator();

  @override
  Widget build(BuildContext buildContext) {
    double screenWidth = MediaQuery.of(buildContext).size.width;
    double screenHeight = MediaQuery.of(buildContext).size.height;
    Orientation orientation = MediaQuery.of(buildContext).orientation;

    double bigButtonHeight = 0;
    double bigButtonWidth = 0;
    double separatorSize = 0;
    double titleSize = 0;

    if (orientation == Orientation.portrait) {
      bigButtonHeight = screenHeight * 0.85;
      bigButtonWidth = screenWidth * 0.85;
      separatorSize = screenHeight * 0.02;
      titleSize = screenHeight * 0.07;
    } else {
      bigButtonHeight = screenHeight * 0.80;
      bigButtonWidth = screenWidth * 0.80;
      separatorSize = screenHeight * 0.05;
      titleSize = screenHeight * 0.08;
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg-farm.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: buildSpeechPageLayout(buildContext, soundsData),
      ),
    );
  }
}

final List<Sound> soundsData = [
  Sound.imageDisplay(
      "1", "animal", "ayam", "ayam.mp3", "chicken.png", Colors.blue),
  Sound.imageDisplay(
      "2", "animal", "sapi", "sapi.mp3", "cow.png", Colors.green),
  Sound.imageDisplay(
      "3", "animal", "kuda", "kuda.mp3", "horse.png", Colors.yellow),
  Sound.imageDisplay(
      "4", "animal", "anjing", "anjing.mp3", "dog.png", Colors.red),
  Sound.imageDisplay(
      "5", "animal", "kucing", "kucing.mp3", "cat.png", Colors.orange),
  Sound.imageDisplay(
      "6", "animal", "domba", "domba.mp3", "sheep.png", Colors.deepOrange),
  Sound.imageDisplay("7", "animal", "burung kenari", "burung.mp3", "canary.png",
      Colors.indigo),
  Sound.imageDisplay(
      "8", "animal", "gajah", "gajah.mp3", "elephant.png", Colors.teal),
  Sound.imageDisplay(
      "9", "animal", "hamster", "hamster.mp3", "hamster.png", Colors.pink),
  Sound.imageDisplay(
      "10", "animal", "singa", "singa.mp3", "lion.png", Colors.lime)
];
