import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smart_shoper/constants.dart';
import 'OnBoarding/views/introduction_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
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
            height: 96.h,
            child: Image.asset("assets/icons/splash_icon.png"),
          ),
        ),
      ),
    );
  }
}
