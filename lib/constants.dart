import 'package:flutter/material.dart';

const Color kTextColor = Color.fromRGBO(28, 15, 84, 1);
const Color kGreyColor = Color.fromRGBO(234, 234, 234, 1);
const Color kLightGreyColor = Color.fromRGBO(246, 248, 250, 1);
const Color kDarkGreyColor = Color.fromRGBO(186, 186, 186, 1);
const Color kgreenColor = Color.fromRGBO(137, 249, 149, 1);
const Color kBlueColor = Color.fromRGBO(50, 200, 217, 1);

const Gradient kHorizontalrGradiant = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    kBlueColor,
    kgreenColor,
  ],
);
const Gradient kVerticalGradiant = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    kgreenColor,
    kBlueColor,
  ],
);
