import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smart_shoper/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';

import 'OnBoarding/views/introduction_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      if (kDebugMode) {
        print("Yeah, this line is printed after 3 seconds");
      }
      Navigator.pushReplacementNamed(context, IntroductionView.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: kVerticalGradiant,
        ),
        child: Center(
          child: SizedBox(
            height: 150.h,
            child: SvgPicture.asset("assets/icons/splash_icon.svg"),
          ),
        ),
      ),
    );
  }
}
