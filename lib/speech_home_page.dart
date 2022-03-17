import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ssp_ce_flutter/component_wrapper.dart';
import 'package:ssp_ce_flutter/constants.dart';
import 'package:ssp_ce_flutter/learn_speech/animal_speech_page.dart';
import 'package:ssp_ce_flutter/model/card1_model.dart';
import 'package:ssp_ce_flutter/model/card_speech_model.dart';

class SpeechHomePage extends StatefulWidget {
  const SpeechHomePage({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SpeechHomePage> {
  _MyAppState() {
    ComponentWrapper.instance; //init singleton to wrap components
  }

  @override
  Widget build(BuildContext buildContext) {
    double screenWidth = MediaQuery.of(buildContext).size.width;
    double screenHeight = MediaQuery.of(buildContext).size.height;
    Orientation orientation = MediaQuery.of(buildContext).orientation;

    double bigButtonHeight = 0;
    double bigButtonWidth = 0;
    double separatorSize = 0;
    double titleSize = 0;

    if (orientation == Orientation.portrait) {
      bigButtonHeight = screenHeight * 0.85;
      bigButtonWidth = screenWidth * 0.85;
      separatorSize = screenHeight * 0.02;
      titleSize = screenHeight * 0.07;
    } else {
      bigButtonHeight = screenHeight * 0.75;
      bigButtonWidth = screenWidth * 0.80;
      separatorSize = screenHeight * 0.05;
      titleSize = screenHeight * 0.08;
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg-farm.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
                height: titleSize,
                margin: EdgeInsets.only(
                    left: separatorSize,
                    top: separatorSize,
                    right: separatorSize),
                child: Row(
                  children: [
                    InkWell(
                      child: Icon(
                        Icons.chevron_left_rounded,
                        size: titleSize,
                      ),
                      onTap: () {
                        ComponentWrapper.instance.audioCache2
                            .play("button-tap.wav");
                        Navigator.pop(buildContext);
                      },
                      enableFeedback: false,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: separatorSize,
              ),
              Container(
                height: bigButtonHeight,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: separatorSize, right: 6),
                    itemCount: cardsSpeech.length,
                    itemBuilder: (context, index) {
                      return Material(
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Ink(
                              height: bigButtonHeight,
                              width: bigButtonWidth,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color(cardsSpeech[index].cardBackground)
                                            .withOpacity(CARD_OPACITY),
                                        Colors.blue.withOpacity(CARD_OPACITY)
                                      ])),
                              child: InkWell(
                                enableFeedback: false,
                                onTap: () {
                                  ComponentWrapper.instance.audioCache2
                                      .play("button-tap.wav");
                                  Navigator.pushNamed(buildContext,
                                      cardsSpeech[index].cardPage);
                                },
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                        child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 50),
                                        child: Text(
                                          cardsSpeech[index].category,
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ))
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: separatorSize,
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
