import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ssp_ce_flutter/learn_speech/animal_speech_page.dart';
import 'package:ssp_ce_flutter/component_wrapper.dart';
import 'package:ssp_ce_flutter/help_page.dart';
import 'package:ssp_ce_flutter/learn_speech/household_speech_page.dart';
import 'package:ssp_ce_flutter/learn_speech/vehicle_speech_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  _MyAppState() {
    ComponentWrapper.instance; //init singleton to wrap components
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.immersiveSticky); //Fullscreen display

    final List<Widget> _widgetOptions = <Widget>[
      AnimalSpeechPage(),
      VehicleSpeechPage(),
      HouseholdSpeechPage(),
      HelpPage()
    ];

    return MaterialApp(
      home: Scaffold(
        // appBar: appBar(),
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: navBar(),
      ),
    );
  }

  /************************ NAVIGATION BAR BELOW **************************/
  int _selectedIndex = 0;

  BottomNavigationBar navBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        AnimalSpeechPage.getNavBarItem,
        VehicleSpeechPage.getNavBarItem,
        HouseholdSpeechPage.getNavBarItem,
        HelpPage.getNavBarItem,
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  /************************ NAVIGATION BAR ABOVE **************************/

}
