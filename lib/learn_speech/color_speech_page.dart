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
  Sound("1", "color", "merah", "merah.mp3", "", Colors.red),
  Sound("2", "color", "oranye", "oranye.mp3", "", Colors.orange),
  Sound("3", "color", "kuning", "kuning.mp3", "", Colors.yellow),
  Sound("4", "color", "hijau", "hijau.mp3", "", Colors.green),
  Sound("5", "color", "biru", "biru.mp3", "", Colors.blue),
  Sound("6", "color", "ungu", "ungu.mp3", "", Colors.purple),
  Sound("7", "color", "hitam", "hitam.mp3", "", Colors.black),
  Sound("8", "color", "putih", "putih.mp3", "", Colors.white),
  Sound("9", "color", "coklat", "coklat.mp3", "", Colors.brown),
  Sound("10", "color", "pink", "pink.mp3", "", Colors.pink)
];
