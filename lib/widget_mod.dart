import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var BORDERED_TEXT_SHADOW = [
  Shadow(
// bottomLeft
      offset: Offset(-1.5, -1.5),
      color: Colors.black),
  Shadow(
// bottomRight
      offset: Offset(1.5, -1.5),
      color: Colors.black),
  Shadow(
// topRight
      offset: Offset(1.5, 1.5),
      color: Colors.black),
  Shadow(
// topLeft
      offset: Offset(-1.5, 1.5),
      color: Colors.black),
];
