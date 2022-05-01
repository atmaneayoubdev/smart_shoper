import 'package:flutter/material.dart';

const Color kTextColor = Color.fromRGBO(28, 15, 84, 1);
const Color kGreyColor = Color.fromRGBO(246, 248, 250, 1);
const Color kBlueGreenColor = Color.fromRGBO(137, 249, 149, 1);
const Color kYellowGreenColor = Color.fromRGBO(50, 200, 17, 1);

const Gradient kHorizontalrGradiant = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    kYellowGreenColor,
    kBlueGreenColor,
  ],
);
const Gradient kVerticalGradiant = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    kYellowGreenColor,
    kBlueGreenColor,
  ],
);
