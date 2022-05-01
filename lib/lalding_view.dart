import 'package:flutter/material.dart';

class Landingview extends StatefulWidget {
  const Landingview({Key? key}) : super(key: key);
  static const String routeName = '/landing_page';

  @override
  State<Landingview> createState() => _LandingviewState();
}

class _LandingviewState extends State<Landingview> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Landing view"),
      ),
    );
  }
}
