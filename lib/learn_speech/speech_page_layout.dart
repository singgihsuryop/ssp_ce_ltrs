import 'package:flutter/material.dart';
import 'package:ssp_ce_ltrs/component_wrapper.dart';
import 'package:ssp_ce_ltrs/sound.dart';
import 'package:ssp_ce_ltrs/sound_populator.dart';

Widget buildSpeechPageLayout(BuildContext buildContext, List<Sound> soundsData,
    [int? numButtonPerRowPortrait, int? numButtonPerRowLandscape]) {
  double screenWidth = MediaQuery.of(buildContext).size.width;
  double screenHeight = MediaQuery.of(buildContext).size.height;
  Orientation orientation = MediaQuery.of(buildContext).orientation;

  double bigButtonHeight = 0;
  double separatorSize = 0;
  double titleSize = 0;

  if (orientation == Orientation.portrait) {
    bigButtonHeight = screenHeight * 0.85;
    separatorSize = screenHeight * 0.02;
    titleSize = screenHeight * 0.07;
  } else {
    bigButtonHeight = screenHeight * 0.80;
    separatorSize = screenHeight * 0.05;
    titleSize = screenHeight * 0.08;
  }

  return Column(
    children: [
      Container(
        height: titleSize,
        margin: EdgeInsets.only(
            left: separatorSize, top: separatorSize, right: separatorSize),
        child: Row(
          children: [
            GestureDetector(
              child: Icon(
                Icons.chevron_left_rounded,
                size: titleSize,
              ),
              onTap: () {
                ComponentWrapper.instance.audioCache2.play("button-tap.wav");
                Navigator.pop(buildContext);
              },
            )
          ],
        ),
      ),
      SizedBox(
        height: separatorSize,
      ),
      Container(
        height: bigButtonHeight,
        child: Column(
            children: ComponentWrapper.instance.soundPopulator.populateData(
                soundsData,
                MediaQuery.of(buildContext).orientation,
                numButtonPerRowPortrait,
                numButtonPerRowLandscape)),
      ),
    ],
  );
}

Widget buildSpeechPageLayout2(BuildContext buildContext, List<Sound> soundsData,
    [int? numButtonPerRowPortrait, int? numButtonPerRowLandscape]) {
  double screenWidth = MediaQuery.of(buildContext).size.width;
  double screenHeight = MediaQuery.of(buildContext).size.height;
  Orientation orientation = MediaQuery.of(buildContext).orientation;

  double bigButtonHeight = 0;
  double separatorSize = 0;
  double titleSize = 0;

  if (orientation == Orientation.portrait) {
    bigButtonHeight = screenHeight * 0.85;
    separatorSize = screenHeight * 0.02;
    titleSize = screenHeight * 0.07;
  } else {
    bigButtonHeight = screenHeight * 0.80;
    separatorSize = screenHeight * 0.05;
    titleSize = screenHeight * 0.08;
  }

  return Column(
    children: [
      Container(
        height: titleSize,
        margin: EdgeInsets.only(
            left: separatorSize, top: separatorSize, right: separatorSize),
        child: Row(
          children: [
            GestureDetector(
              child: Icon(
                Icons.chevron_left_rounded,
                size: titleSize,
              ),
              onTap: () {
                ComponentWrapper.instance.audioCache2.play("button-tap.wav");
                Navigator.pop(buildContext);
              },
            )
          ],
        ),
      ),
      SizedBox(
        height: separatorSize,
      ),
      Container(
        height: bigButtonHeight,
        child: ComponentWrapper.instance.soundPopulator.populateData2(
            buildContext,
            soundsData,
            MediaQuery.of(buildContext).orientation,
            numButtonPerRowPortrait,
            numButtonPerRowLandscape),
      ),
    ],
  );
}
