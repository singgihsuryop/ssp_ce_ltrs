import 'package:flutter/material.dart';
import 'package:ssp_ce_flutter/learn_speech/speech_page_layout.dart';
import 'package:ssp_ce_flutter/sound.dart';
import 'package:ssp_ce_flutter/sound_populator.dart';

class HouseholdSpeechPage extends StatefulWidget {
  const HouseholdSpeechPage({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();

  static const BottomNavigationBarItem getNavBarItem = BottomNavigationBarItem(
    icon: Icon(Icons.house_siding),
    label: 'Benda Rumah',
    backgroundColor: Colors.green,
  );
}

class _MyAppState extends State<HouseholdSpeechPage> {
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.lightGreen,
        ),
        child: buildSpeechPageLayout(buildContext, soundsData),
      ),
    );
  }
}

final List<Sound> soundsData = [
  Sound.imageDisplay(
      "21", "household", "keran", "keran.mp3", "tap.png", Colors.purple),
  Sound.imageDisplay(
      "22", "household", "bel", "bel.mp3", "bell.png", Colors.lightGreenAccent),
  Sound.imageDisplay("23", "household", "jam weker", "jamweker.mp3",
      "alarm.png", Colors.deepOrangeAccent),
  Sound.imageDisplay(
      "24", "household", "toilet", "toilet.mp3", "toilet.png", Colors.amber),
  Sound.imageDisplay("25", "household", "teko", "teko.mp3", "kettle.png",
      Colors.lightBlueAccent),
  Sound.imageDisplay("26", "household", "pisau", "pisau.mp3", "knife.png",
      Colors.indigoAccent),
  Sound.imageDisplay(
      "27", "household", "sapu", "sapu.mp3", "broom.png", Colors.amberAccent),
  Sound.imageDisplay("28", "household", "kulkas", "kulkas.mp3",
      "refrigerator.png", Colors.deepOrangeAccent),
  Sound.imageDisplay("29", "household", "saklar", "saklar.mp3", "switch.png",
      Colors.deepPurple),
  Sound.imageDisplay(
      "30", "household", "kompor", "kompor.mp3", "stove.png", Colors.brown)
];

// bor, gerinda, gergaji mesin, paku, kunci
