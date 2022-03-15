import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ssp_ce_flutter/component_wrapper.dart';
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
    return MaterialApp(
      home: Scaffold(
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
                    InkWell(
                      child: Icon(
                        Icons.chevron_left_rounded,
                        size: 50,
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
                height: 15,
              ),
              Container(
                height: 600,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 15, right: 6),
                    itemCount: cardsSpeech.length,
                    itemBuilder: (context, index) {
                      return Material(
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Ink(
                              height: 600,
                              width: 344,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  color:
                                      Color(cardsSpeech[index].cardBackground)),
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
                                    Positioned(
                                        left: 49,
                                        top: 65,
                                        child:
                                            Text(cardsSpeech[index].category))
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
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
