import 'package:flutter/material.dart';
import 'package:ssp_ce_flutter/component_wrapper.dart';
import 'package:ssp_ce_flutter/sound.dart';
import 'package:audioplayers/audioplayers.dart';

class SoundPopulator {
  final int DEF_NUM_BUTTON_PER_ROW_PORTRAIT = 2;
  final int DEF_NUM_BUTTON_PER_ROW_LANDSCAPE = 5;

  List<Flexible> populateData(List<Sound> soundsData, Orientation orientation,
      [int? numButtonPerRowPortrait, int? numButtonPerRowLandscape]) {
    //AudioPlayer audioPlayer = ComponentWrapper.instance.audioPlayer;
    AudioCache audioCache = ComponentWrapper.instance.audioCache;

    List<Flexible> allDataGroupedEachRow = [];
    List<Flexible> data = [];

    int? numButtonEachRow = orientation == Orientation.portrait
        ? (numButtonPerRowPortrait == null
            ? DEF_NUM_BUTTON_PER_ROW_PORTRAIT
            : numButtonPerRowPortrait)
        : (numButtonPerRowLandscape == null
            ? DEF_NUM_BUTTON_PER_ROW_LANDSCAPE
            : numButtonPerRowLandscape);

    int counter = 0;
    for (Sound sound in soundsData) {
      Widget displayImage = Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/" + sound.imagePath),
              fit: BoxFit.contain),
        ),
      );

      Widget displaytext = Container(
        child: Text(
          sound.soundName.toUpperCase(),
          style: TextStyle(fontFamily: "ChocolateBar", fontSize: 30),
        ),
      );

      data.add(Flexible(
        flex: 1,
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
          child: SizedBox.expand(
            child: MaterialButton(
              padding: EdgeInsets.all(8.0),
              textColor: Colors.white,
              color: sound.bgColor,
              splashColor: Colors.greenAccent,
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                      color: Colors.black12,
                      width: 1,
                      style: BorderStyle.solid)),
              child: GestureDetector(
                onTapDown: (_) {
                  print('Tapped onTapDown');
                  audioCache.play(sound.soundPath);
                },
                onTapCancel: () {
                  print('Tapped onTapCancel');
                  audioCache.play(sound.soundPath);
                },
                child:
                    (sound.imagePath.isNotEmpty ? displayImage : displaytext),
              ),
              // ),
              onPressed: () {/* use onTapDown from GestureDetector */},
            ),
          ),
          /*child: SizedBox.expand(
                child: IconButton(
              icon: Image.asset('images/cat.png'),
              iconSize: 1,
              color: sound.color,
              onPressed: () {},
            )*/
/*              child: ElevatedButton(
                child: Text("Button " + sound.soundName),
                style: ElevatedButton.styleFrom(primary: sound.color),
                onPressed: () {},
              ),*/
        ),
      ));

      counter++;

      if (counter == numButtonEachRow) {
        print('dataPerRow.add');
        allDataGroupedEachRow.add(Flexible(
            flex: 1,
            child: Row(
              children: data,
            )));
        data = [];
        counter = 0;
      }
    }
    return allDataGroupedEachRow;
  }

  Widget populateData2(BuildContext buildContext, List<Sound> soundsData,
      Orientation orientation,
      [int? numButtonPerRowPortrait, int? numButtonPerRowLandscape]) {
    AudioCache audioCache = ComponentWrapper.instance.audioCache;

    var size = MediaQuery.of(buildContext).size;
    var orientation = MediaQuery.of(buildContext).orientation;

    int? numButtonEachRow = orientation == Orientation.portrait
        ? (numButtonPerRowPortrait == null
            ? DEF_NUM_BUTTON_PER_ROW_PORTRAIT
            : numButtonPerRowPortrait)
        : (numButtonPerRowLandscape == null
            ? DEF_NUM_BUTTON_PER_ROW_LANDSCAPE
            : numButtonPerRowLandscape);

    /*24 is for notification bar on Android*/
    final double screenHeight = size.height;
    final double screenWidth = size.width;

    double titleSize = 0, buttonAreaHeight = 0, separatorSize = 0;

    if (orientation == Orientation.portrait) {
      titleSize = screenHeight * 0.07;
      separatorSize = screenHeight * 0.02;
      buttonAreaHeight = 1.2 * (screenHeight) / screenWidth;
    } else {
      titleSize = screenHeight * 0.08;
      separatorSize = screenHeight * 0.05;
      buttonAreaHeight = screenWidth / (screenHeight) / 1.4;
    }

    return GridView.count(
        crossAxisCount: numButtonEachRow,
        childAspectRatio: buttonAreaHeight,
        children: List.generate(
          soundsData.length,
          (index) {
            Widget displayImage = Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/" + soundsData[index].imagePath),
                    fit: BoxFit.contain),
              ),
            );

            Widget displayITxts = Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/" + soundsData[index].imagePath),
                    fit: BoxFit.contain),
              ),
            );

            Widget displaytext = Container(
              child: SizedBox.expand(
                  child: Text(
                soundsData[index].soundName.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: "ChocolateBar", fontSize: 30),
              )),
            );

            return MaterialButton(
              padding: EdgeInsets.all(8.0),
              textColor: Colors.white,
              color: soundsData[index].bgColor,
              splashColor: Colors.greenAccent,
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                      color: Colors.black12,
                      width: 1,
                      style: BorderStyle.solid)),
              child: GestureDetector(
                onTapDown: (_) {
                  print('Tapped onTapDown');
                  audioCache.play(soundsData[index].soundPath);
                },
                onTapCancel: () {
                  print('Tapped onTapCancel');
                  audioCache.play(soundsData[index].soundPath);
                },
                child: (soundsData[index].imagePath.isNotEmpty
                    ? displayImage
                    : displaytext),
              ),
              // ),
              onPressed: () {/* use onTapDown from GestureDetector */},
            );
          },
        ));
  }
}
