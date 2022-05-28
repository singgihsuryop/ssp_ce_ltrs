import 'package:flutter/material.dart';
import 'package:ssp_ce_ltrs/learn_speech/speech_page_layout.dart';
import 'package:ssp_ce_ltrs/sound.dart';
import 'package:ssp_ce_ltrs/sound_populator.dart';

class VehicleSpeechPage extends StatefulWidget {
  const VehicleSpeechPage({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();

  static const BottomNavigationBarItem getNavBarItem = BottomNavigationBarItem(
    icon: Icon(Icons.train),
    label: 'Kendaraan',
    backgroundColor: Colors.blue,
  );
}

class _MyAppState extends State<VehicleSpeechPage> {
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.tealAccent,
        ),
        child: buildSpeechPageLayout(buildContext, soundsData),
      ),
    );
  }
}

final List<Sound> soundsData = [
  Sound.imageDisplay(
      "11", "vehicle", "mobil", "mobil.mp3", "car.png", Colors.lightBlue),
  Sound.imageDisplay("12", "vehicle", "motor", "motor.mp3", "motorcycle.png",
      Colors.lightGreen),
  Sound.imageDisplay("13", "vehicle", "kereta api", "kereta-api.mp3",
      "train.png", Colors.yellowAccent),
  Sound.imageDisplay("14", "vehicle", "helikopter", "helikopter.mp3",
      "helicopter.png", Colors.redAccent),
  Sound.imageDisplay(
      "15", "vehicle", "kapal", "kapal.mp3", "ship.png", Colors.deepOrange),
  Sound.imageDisplay("16", "vehicle", "pesawat terbang", "pesawat.mp3",
      "plane.png", Colors.cyanAccent),
  Sound.imageDisplay("17", "vehicle", "ambulans", "ambulans.mp3",
      "ambulance.png", Colors.indigoAccent),
  Sound.imageDisplay("18", "vehicle", "sepeda", "sepeda.mp3", "bicycle.png",
      Colors.tealAccent),
  Sound.imageDisplay(
      "19", "vehicle", "bis", "bis.mp3", "bus.png", Colors.pinkAccent),
  Sound.imageDisplay("20", "vehicle", "mobil polisi", "mobil-polisi.mp3",
      "police-car.png", Colors.limeAccent)
];
