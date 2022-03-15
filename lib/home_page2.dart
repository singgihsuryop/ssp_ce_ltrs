import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ssp_ce_flutter/component_wrapper.dart';
import 'package:ssp_ce_flutter/model/card1_model.dart';
import 'package:ssp_ce_flutter/speech_home_page.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomePage2> {
  _MyAppState() {
    ComponentWrapper.instance; //init singleton to wrap components
  }

  @override
  Widget build(BuildContext buildContext) {
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.immersiveSticky); //Fullscreen display

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
                    Icon(
                      Icons.account_circle_rounded,
                      size: 50,
                    ),
                    Text(
                      "Hello",
                      style: TextStyle(fontSize: 30),
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
                    itemCount: cards1.length,
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
                                  color: Color(cards1[index].cardBackground)),
                              child: InkWell(
                                enableFeedback: false,
                                onTap: () {
                                  ComponentWrapper.instance.audioCache2
                                      .play("button-tap.wav");
                                  Navigator.pushNamed(
                                      buildContext, cards1[index].cardPage);
                                },
                                child: Stack(
                                  children: [
                                    Positioned(
                                        left: 49,
                                        top: 65,
                                        child: Text(cards1[index].cardTitle))
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
