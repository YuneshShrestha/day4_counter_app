import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_count < 0) const Text("Negative number detected"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _count++;
                  });
                  print(_count);
                },
                child: const Text("+"),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                _count.toString(),
                style: const TextStyle(
                  fontSize: 26,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _count--;
                  });
                  print(_count);
                },
                child: const Text("-"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
