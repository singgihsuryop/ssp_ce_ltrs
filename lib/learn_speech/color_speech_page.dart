import 'package:flutter/material.dart';
import 'package:ssp_ce_flutter/learn_speech/speech_page_layout.dart';
import 'package:ssp_ce_flutter/sound.dart';
import 'package:ssp_ce_flutter/sound_populator.dart';

class ColorSpeechPage extends StatefulWidget {
  const ColorSpeechPage({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();

  static const BottomNavigationBarItem getNavBarItem = BottomNavigationBarItem(
    icon: Icon(Icons.adb),
    label: 'Warna',
    backgroundColor: Colors.lightBlueAccent,
  );
}

class _MyAppState extends State<ColorSpeechPage> {
  List<Flexible> dataPerRow = [];
  final SoundPopulator soundPopulator = SoundPopulator();

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white54,
        ),
        child: buildSpeechPageLayout(buildContext, soundsData),
      ),
    );
  }
}

final List<Sound> soundsData = [
  Sound.imageDisplay(
      "1", "color", "merah", "merah.mp3", "transparent.png", Colors.red),
  Sound.imageDisplay(
      "2", "color", "oranye", "oranye.mp3", "transparent.png", Colors.orange),
  Sound.imageDisplay(
      "3", "color", "kuning", "kuning.mp3", "transparent.png", Colors.yellow),
  Sound.imageDisplay(
      "4", "color", "hijau", "hijau.mp3", "transparent.png", Colors.green),
  Sound.imageDisplay(
      "5", "color", "biru", "biru.mp3", "transparent.png", Colors.blue),
  Sound.imageDisplay(
      "6", "color", "ungu", "ungu.mp3", "transparent.png", Colors.purple),
  Sound.imageDisplay(
      "7", "color", "hitam", "hitam.mp3", "transparent.png", Colors.black),
  Sound.imageDisplay(
      "8", "color", "putih", "putih.mp3", "transparent.png", Colors.white),
  Sound.imageDisplay(
      "9", "color", "coklat", "coklat.mp3", "transparent.png", Colors.brown),
  Sound.imageDisplay(
      "10", "color", "pink", "pink.mp3", "transparent.png", Colors.pink)
];
