import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 20),
        child: Align(
          alignment: Alignment.bottomLeft,
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
