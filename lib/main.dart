import 'package:day1/routes/routes.dart';
import 'package:day1/screen/counter_screen.dart';
import 'package:day1/screen/home_screen.dart';
import 'package:day1/screen/splash_screen.dart';
import 'package:day1/screen/task_scree.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const SplashScreen(),
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) => RouteGenerator.generatedRoute(settings),
    );
  }
}
