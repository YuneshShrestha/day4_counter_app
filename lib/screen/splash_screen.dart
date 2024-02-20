import 'dart:async';

import 'package:day1/screen/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routeName = "/";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String data = "I am splash screen";
  @override
  void initState() {
    super.initState();
    callNextScreen();
  }

  void callNextScreen() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacementNamed(Home.routeName, arguments: data);
      // Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      //   return Home(text: data);
      // }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 20),
        child: Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 120,
            height: 120,
            child: Image.asset('assets/images/logo.png'),
          ),
        ),
      ),
    );
  }
}
