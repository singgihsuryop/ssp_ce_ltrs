import 'package:flutter/material.dart';
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
  List<Flexible> dataPerRow = [];
  final SoundPopulator soundPopulator = SoundPopulator();

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
        ),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, top: 15, right: 15),
              child: Row(
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.chevron_left_rounded,
                      size: 50,
                    ),
                    onTap: () {
                      Navigator.pop(buildContext);
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 600,
              child: Column(
                children: soundPopulator.populateData(
                    soundsData, MediaQuery.of(context).orientation),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<Sound> soundsData = [
  Sound("11", "number", "satu", "satu.mp3", "one.png", Colors.lightBlue),
  Sound("12", "number", "dua", "dua.mp3", "two.png", Colors.lightGreen),
  Sound("13", "number", "tiga", "tiga.mp3", "three.png", Colors.yellowAccent),
  Sound("14", "number", "helikopter", "four.mp3", "helicopter.png",
      Colors.redAccent),
  Sound("15", "number", "lima", "lima.mp3", "five.png", Colors.deepOrange),
  Sound("16", "number", "enam", "pesawat.mp3", "six.png", Colors.cyanAccent),
  Sound("17", "number", "ambulans", "tujuh.mp3", "seven.png",
      Colors.indigoAccent),
  Sound(
      "18", "number", "delapan", "sepeda.mp3", "eight.png", Colors.tealAccent),
  Sound("19", "number", "sembilan", "sembilan.mp3", "nine.png",
      Colors.pinkAccent),
  Sound("20", "number", "nol", "nol.mp3", "zero.png", Colors.limeAccent)
];
