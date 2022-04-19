import 'package:flutter/material.dart';

const kTitleTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 50,
  fontWeight: FontWeight.w900,
);

const kAddTaskTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontSize: 30,
  fontWeight: FontWeight.bold,
);

const kAddButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 16,
);

const kSubTitleTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 12,
);

const kDecorationRadiusOnlyTop = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(20.0),
    topLeft: Radius.circular(20.0),
  ),
);
