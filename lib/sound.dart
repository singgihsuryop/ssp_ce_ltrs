import 'package:flutter/material.dart';

class Sound {
  late String id;
  late String soundCategory;
  late String soundName;
  late String soundPath;
  late String imagePath;
  late Color bgColor;
  late Color displayColor;
  late String displayType;

  Sound.imageDisplay(String id, String soundCategory, String soundName,
      String soundPath, String imagePath, Color bgColor) {
    this.id = id;
    this.soundCategory = soundCategory;
    this.soundName = soundName;
    this.soundPath = soundPath;
    this.imagePath = imagePath;
    this.bgColor = bgColor;
    this.displayColor = Colors.transparent;
    this.displayType = "image";
  }

  Sound.svgDisplay(String id, String soundCategory, String soundName,
      String soundPath, String imagePath, Color bgColor, Color displayColor) {
    this.id = id;
    this.soundCategory = soundCategory;
    this.soundName = soundName;
    this.soundPath = soundPath;
    this.imagePath = imagePath;
    this.bgColor = bgColor;
    this.displayColor = displayColor;
    this.displayType = "svg";
  }

  Sound.textDisplay(String id, String soundCategory, String soundName,
      String soundPath, Color bgColor, Color displayColor) {
    this.id = id;
    this.soundCategory = soundCategory;
    this.soundName = soundName;
    this.soundPath = soundPath;
    this.imagePath = "";
    this.bgColor = bgColor;
    this.displayColor = displayColor;
    this.displayType = "text";
  }
}
