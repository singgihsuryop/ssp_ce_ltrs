import 'package:flutter/material.dart';
import 'package:ssp_ce_flutter/sound.dart';
import 'package:ssp_ce_flutter/sound_populator.dart';

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
  List<Flexible> dataPerRow = [];
  final SoundPopulator soundPopulator = SoundPopulator();

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.tealAccent,
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
  Sound("11", "vehicle", "mobil", "mobil.mp3", "car.png", Colors.lightBlue),
  Sound("12", "vehicle", "motor", "motor.mp3", "motorcycle.png",
      Colors.lightGreen),
  Sound("13", "vehicle", "kereta api", "kereta-api.mp3", "train.png",
      Colors.yellowAccent),
  Sound("14", "vehicle", "helikopter", "helikopter.mp3", "helicopter.png",
      Colors.redAccent),
  Sound("15", "vehicle", "kapal", "kapal.mp3", "ship.png", Colors.deepOrange),
  Sound("16", "vehicle", "pesawat terbang", "pesawat.mp3", "plane.png",
      Colors.cyanAccent),
  Sound("17", "vehicle", "ambulans", "ambulans.mp3", "ambulance.png",
      Colors.indigoAccent),
  Sound("18", "vehicle", "sepeda", "sepeda.mp3", "bicycle.png",
      Colors.tealAccent),
  Sound("19", "vehicle", "bis", "bis.mp3", "bus.png", Colors.pinkAccent),
  Sound("20", "vehicle", "mobil polisi", "mobil-polisi.mp3", "police-car.png",
      Colors.limeAccent)
];
