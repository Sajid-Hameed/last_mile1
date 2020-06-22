import 'package:flutter/material.dart';

const Color yellow = Colors.white;
const Color darkgreen = Color.fromRGBO(0,100,0,1);
const Color mediumYellow = Colors.white;
const Color darkYellow = Colors.white;
const Color transparentYellow = Color.fromRGBO(253, 184, 70, 0.7);
const Color darkGrey = Color(0xff202020);

const LinearGradient mainButton = LinearGradient(colors: [
  Colors.redAccent,Colors.redAccent,Colors.redAccent
], begin: FractionalOffset.topCenter, end: FractionalOffset.bottomCenter);

const List<BoxShadow> shadow = [
  BoxShadow(color: Colors.black12, offset: Offset(0, 3), blurRadius: 6)
];

screenAwareSize(int size, BuildContext context) {
  double baseHeight = 640.0;
  return size * MediaQuery.of(context).size.height / baseHeight;
}