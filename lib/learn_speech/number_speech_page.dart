import 'package:flutter/material.dart';
import 'package:ssp_ce_flutter/learn_speech/speech_page_layout.dart';
import 'package:ssp_ce_flutter/sound.dart';
import 'package:ssp_ce_flutter/sound_populator.dart';

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
  Sound("11", "number", "1", "satu.mp3", "", Colors.lightBlue),
  Sound("12", "number", "2", "dua.mp3", "", Colors.lightGreen),
  Sound("13", "number", "3", "tiga.mp3", "", Colors.yellowAccent),
  Sound("14", "number", "4", "empat.mp3", "", Colors.redAccent),
  Sound("15", "number", "5", "lima.mp3", "", Colors.deepOrange),
  Sound("16", "number", "6", "enam.mp3", "", Colors.cyanAccent),
  Sound("17", "number", "7", "tujuh.mp3", "", Colors.indigoAccent),
  Sound("18", "number", "8", "delapan.mp3", "", Colors.tealAccent),
  Sound("19", "number", "9", "sembilan.mp3", "", Colors.pinkAccent),
  Sound("20", "number", "0", "nol.mp3", "", Colors.limeAccent)
];
