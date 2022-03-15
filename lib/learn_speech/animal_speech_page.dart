import 'package:flutter/material.dart';
import 'package:ssp_ce_flutter/sound.dart';
import 'package:ssp_ce_flutter/sound_populator.dart';

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
  List<Flexible> dataPerRow = [];
  final SoundPopulator soundPopulator = SoundPopulator();

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg-farm.jpg"),
            fit: BoxFit.cover,
          ),
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
  Sound("1", "animal", "ayam", "ayam.mp3", "chicken.png", Colors.blue),
  Sound("2", "animal", "sapi", "sapi.mp3", "cow.png", Colors.green),
  Sound("3", "animal", "kuda", "kuda.mp3", "horse.png", Colors.yellow),
  Sound("4", "animal", "anjing", "anjing.mp3", "dog.png", Colors.red),
  Sound("5", "animal", "kucing", "kucing.mp3", "cat.png", Colors.orange),
  Sound("6", "animal", "domba", "domba.mp3", "sheep.png", Colors.deepOrange),
  Sound("7", "animal", "burung kenari", "burung.mp3", "canary.png",
      Colors.indigo),
  Sound("8", "animal", "gajah", "gajah.mp3", "elephant.png", Colors.teal),
  Sound("9", "animal", "hamster", "hamster.mp3", "hamster.png", Colors.pink),
  Sound("10", "animal", "singa", "singa.mp3", "lion.png", Colors.lime)
];
