import 'package:flutter/material.dart';
import 'package:ssp_ce_ltrs/learn_speech/speech_page_layout.dart';
import 'package:ssp_ce_ltrs/sound.dart';
import 'package:ssp_ce_ltrs/sound_populator.dart';

class NumberSpeechPage extends StatefulWidget {
  const NumberSpeechPage({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();

  static const BottomNavigationBarItem getNavBarItem = BottomNavigationBarItem(
    icon: Icon(Icons.train),
    label: 'Kendaraan',
    backgroundColor: Colors.blue,
  );
}

class _MyAppState extends State<NumberSpeechPage> {
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.lime,
        ),
        child: buildSpeechPageLayout(buildContext, soundsData),
      ),
    );
  }
}

final List<Sound> soundsData = [
  Sound.textDisplay(
      "11", "number", "1", "satu.mp3", Colors.lightBlue, Colors.black),
  Sound.textDisplay(
      "12", "number", "2", "dua.mp3", Colors.lightGreen, Colors.black),
  Sound.textDisplay(
      "13", "number", "3", "tiga.mp3", Colors.yellowAccent, Colors.black),
  Sound.textDisplay(
      "14", "number", "4", "empat.mp3", Colors.redAccent, Colors.black),
  Sound.textDisplay(
      "15", "number", "5", "lima.mp3", Colors.deepOrange, Colors.black),
  Sound.textDisplay(
      "16", "number", "6", "enam.mp3", Colors.cyanAccent, Colors.black),
  Sound.textDisplay(
      "17", "number", "7", "tujuh.mp3", Colors.indigoAccent, Colors.black),
  Sound.textDisplay(
      "18", "number", "8", "delapan.mp3", Colors.tealAccent, Colors.black),
  Sound.textDisplay(
      "19", "number", "9", "sembilan.mp3", Colors.pinkAccent, Colors.black),
  Sound.textDisplay(
      "20", "number", "0", "nol.mp3", Colors.limeAccent, Colors.black)
];
