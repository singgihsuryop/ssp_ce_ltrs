import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();

  static const BottomNavigationBarItem getNavBarItem = BottomNavigationBarItem(
    icon: Icon(Icons.more_horiz),
    label: 'More',
    backgroundColor: Colors.purple,
  );
}

class _MyAppState extends State<HelpPage> {
  _MyAppState() {}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Text("More features to come (v.1.0.0)"),
      ),
    );
  }
}
