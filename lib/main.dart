import 'package:flutter/material.dart';
import 'package:smart_shoper/OnBoarding/views/introduction_view.dart';
import 'package:smart_shoper/lalding_view.dart';
import 'package:smart_shoper/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'smart shoper',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashView(),
      routes: {
        Landingview.routeName: ((context) => const Landingview()),
        IntroductionView.routeName: ((context) => const IntroductionView())
      },
    );
  }
}
