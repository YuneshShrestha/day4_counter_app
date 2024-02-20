import 'package:day1/screen/counter_screen.dart';
import 'package:day1/screen/home_screen.dart';
import 'package:day1/screen/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? generatedRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) {
          return const SplashScreen();
        });

      case Home.routeName:
        return MaterialPageRoute(builder: (_) {
          return Home(
            text: args.toString(),
          );
        });

      case CounterScreen.routeName:
        return MaterialPageRoute(builder: (_) {
          return const CounterScreen();
        });

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text("This is not valid route"),
            ),
          );
        });
    }
  }
}
