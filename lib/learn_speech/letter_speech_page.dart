import 'package:flutter/material.dart';
import 'package:ssp_ce_flutter/sound.dart';
import 'package:ssp_ce_flutter/sound_populator.dart';

class LetterSpeechPage extends StatefulWidget {
  const LetterSpeechPage({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();

  static const BottomNavigationBarItem getNavBarItem = BottomNavigationBarItem(
    icon: Icon(Icons.train),
    label: 'Kendaraan',
    backgroundColor: Colors.blue,
  );
}

class _MyAppState extends State<LetterSpeechPage> {
  List<Flexible> dataPerRow = [];
  final SoundPopulator soundPopulator = SoundPopulator();

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.lightGreen.shade50,
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
                    soundsData, MediaQuery.of(context).orientation, 3, 7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<Sound> soundsData = [
  Sound("11", "letter", "a", "a.mp3", "", Colors.lightBlue),
  Sound("12", "letter", "b", "b.mp3", "two.png", Colors.lightGreen),
  Sound("13", "letter", "c", "c.mp3", "three.png", Colors.yellowAccent),
  Sound("14", "letter", "d", "d.mp3", "helicopter.png", Colors.redAccent),
  Sound("15", "letter", "e", "e.mp3", "five.png", Colors.deepOrange),
  Sound("16", "letter", "f", "f.mp3", "six.png", Colors.cyanAccent),
  Sound("17", "letter", "g", "g.mp3", "seven.png", Colors.indigoAccent),
  Sound("18", "letter", "h", "h.mp3", "eight.png", Colors.tealAccent),
  Sound("19", "letter", "i", "i.mp3", "nine.png", Colors.pinkAccent),
  Sound("20", "letter", "j", "j.mp3", "zero.png", Colors.limeAccent),
  Sound("11", "letter", "k", "k.mp3", "", Colors.lightBlue),
  Sound("12", "letter", "l", "l.mp3", "two.png", Colors.lightGreen),
  Sound("13", "letter", "m", "m.mp3", "three.png", Colors.yellowAccent),
  Sound("14", "letter", "n", "n.mp3", "helicopter.png", Colors.redAccent),
  Sound("15", "letter", "o", "o.mp3", "five.png", Colors.deepOrange),
  Sound("16", "letter", "p", "p.mp3", "six.png", Colors.cyanAccent),
  Sound("17", "letter", "q", "q.mp3", "seven.png", Colors.indigoAccent),
  Sound("18", "letter", "r", "h.mp3", "eight.png", Colors.tealAccent),
  Sound("19", "letter", "s", "s.mp3", "nine.png", Colors.pinkAccent),
  Sound("20", "letter", "t", "t.mp3", "zero.png", Colors.limeAccent),
  Sound("11", "letter", "u", "u.mp3", "", Colors.lightBlue),
  Sound("12", "letter", "v", "v.mp3", "two.png", Colors.lightGreen),
  Sound("13", "letter", "w", "w.mp3", "three.png", Colors.yellowAccent),
  Sound("14", "letter", "x", "x.mp3", "helicopter.png", Colors.redAccent),
  Sound("15", "letter", "y", "y.mp3", "five.png", Colors.deepOrange),
  Sound("16", "letter", "z", "z.mp3", "six.png", Colors.cyanAccent)
];
