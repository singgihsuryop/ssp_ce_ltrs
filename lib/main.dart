import 'package:flutter/material.dart';
import 'package:ssp_ce_ltrs/home_page.dart';
import 'package:ssp_ce_ltrs/learn_speech/animal_speech_page.dart';
import 'package:ssp_ce_ltrs/learn_speech/color_speech_page.dart';
import 'package:ssp_ce_ltrs/learn_speech/household_speech_page.dart';
import 'package:ssp_ce_ltrs/learn_speech/letter_speech_page.dart';
import 'package:ssp_ce_ltrs/learn_speech/number_speech_page.dart';
import 'package:ssp_ce_ltrs/learn_speech/shape2d_speech_page.dart';
import 'package:ssp_ce_ltrs/learn_speech/shape3d_speech_page.dart';
import 'package:ssp_ce_ltrs/learn_speech/vehicle_speech_page.dart';
import 'package:ssp_ce_ltrs/speech_home_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'Belajar',
    initialRoute: 'homePage',
    onGenerateRoute: (settings) {
      Widget page = HomePage();
      switch (settings.name) {
        case '/speechHomePage':
          page = SpeechHomePage();
          break;
        case '/animalSpeechPage':
          page = AnimalSpeechPage();
          break;
        case '/vehicleSpeechPage':
          page = VehicleSpeechPage();
          break;
        case '/householdSpeechPage':
          page = HouseholdSpeechPage();
          break;
        case '/colorSpeechPage':
          page = ColorSpeechPage();
          break;
        case '/shape2DSpeechPage':
          page = Shape2DSpeechPage();
          break;
        case '/shape3DSpeechPage':
          page = Shape3DSpeechPage();
          break;
        case '/letterSpeechPage':
          page = LetterSpeechPage();
          break;
        case '/numberSpeechPage':
          page = NumberSpeechPage();
          break;
      }

      return PageRouteBuilder(pageBuilder: (_, __, ___) => page);
    },
    routes: {
      'homePage': (context) => HomePage(),
      'speechHomePage': (context) => SpeechHomePage(),
      'animalSpeechPage': (context) => AnimalSpeechPage(),
    },
  ));
}
