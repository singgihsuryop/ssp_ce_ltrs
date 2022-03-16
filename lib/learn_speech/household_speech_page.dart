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
  Sound("21", "household", "keran", "keran.mp3", "tap.png", Colors.purple),
  Sound(
      "22", "household", "bel", "bel.mp3", "bell.png", Colors.lightGreenAccent),
  Sound("23", "household", "alarm", "alarm.mp3", "alarm.png",
      Colors.deepOrangeAccent),
  Sound("24", "household", "toilet", "toilet.mp3", "toilet.png", Colors.amber),
  Sound("25", "household", "teko mendidih", "teko.mp3", "kettle.png",
      Colors.lightBlueAccent),
  Sound("26", "household", "potong pisau", "pisau.mp3", "knife.png",
      Colors.indigoAccent),
/*  Sound("27", "household", "penyedot debu", "", "elephant.png",
      Colors.amberAccent),*/
  /*
  Sound("26", "household", "wind", "", "wind.png",
      Colors.deepOrangeAccent),
  Sound(
      "29", "household", "saklar", "", "hamster.png", Colors.deepPurple),
  Sound("30", "household", "weker kikuk", "", "lion.png", Colors.brown)*/
];

// bor, gerinda, gergaji mesin, paku,
