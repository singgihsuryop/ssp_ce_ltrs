import 'package:flutter/material.dart';
import 'package:ssp_ce_flutter/learn_speech/speech_page_layout.dart';
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
          color: Colors.deepOrange,
        ),
        child: buildSpeechPageLayout(buildContext, soundsData, 3, 7),
      ),
    );
  }
}

final List<Sound> soundsData = [
  Sound.textDisplay(
      "11", "letter", "a", "a.mp3", Colors.lightBlue, Colors.black),
  Sound.textDisplay(
      "12", "letter", "b", "b.mp3", Colors.lightGreen, Colors.black),
  Sound.textDisplay(
      "13", "letter", "c", "c.mp3", Colors.yellowAccent, Colors.black),
  Sound.textDisplay(
      "14", "letter", "d", "d.mp3", Colors.redAccent, Colors.black),
  Sound.textDisplay(
      "15", "letter", "e", "e.mp3", Colors.deepOrange, Colors.black),
  Sound.textDisplay(
      "16", "letter", "f", "f.mp3", Colors.cyanAccent, Colors.black),
  Sound.textDisplay(
      "17", "letter", "g", "g.mp3", Colors.indigoAccent, Colors.black),
  Sound.textDisplay(
      "18", "letter", "h", "h.mp3", Colors.tealAccent, Colors.black),
  Sound.textDisplay(
      "19", "letter", "i", "i.mp3", Colors.pinkAccent, Colors.black),
  Sound.textDisplay(
      "20", "letter", "j", "j.mp3", Colors.limeAccent, Colors.black),
  Sound.textDisplay(
      "11", "letter", "k", "k.mp3", Colors.lightBlue, Colors.black),
  Sound.textDisplay(
      "12", "letter", "l", "l.mp3", Colors.lightGreen, Colors.black),
  Sound.textDisplay(
      "13", "letter", "m", "m.mp3", Colors.yellowAccent, Colors.black),
  Sound.textDisplay(
      "14", "letter", "n", "n.mp3", Colors.redAccent, Colors.black),
  Sound.textDisplay(
      "15", "letter", "o", "o.mp3", Colors.deepOrange, Colors.black),
  Sound.textDisplay(
      "16", "letter", "p", "p.mp3", Colors.cyanAccent, Colors.black),
  Sound.textDisplay(
      "17", "letter", "q", "q.mp3", Colors.indigoAccent, Colors.black),
  Sound.textDisplay(
      "18", "letter", "r", "r.mp3", Colors.tealAccent, Colors.black),
  Sound.textDisplay(
      "19", "letter", "s", "s.mp3", Colors.pinkAccent, Colors.black),
  Sound.textDisplay(
      "20", "letter", "t", "t.mp3", Colors.limeAccent, Colors.black),
  Sound.textDisplay(
      "11", "letter", "u", "u.mp3", Colors.lightBlue, Colors.black),
  Sound.textDisplay(
      "12", "letter", "v", "v.mp3", Colors.lightGreen, Colors.black),
  Sound.textDisplay(
      "13", "letter", "w", "w.mp3", Colors.yellowAccent, Colors.black),
  Sound.textDisplay(
      "14", "letter", "x", "x.mp3", Colors.redAccent, Colors.black),
  Sound.textDisplay(
      "15", "letter", "y", "y.mp3", Colors.deepOrange, Colors.black),
  Sound.textDisplay(
      "16", "letter", "z", "z.mp3", Colors.cyanAccent, Colors.black)
];
