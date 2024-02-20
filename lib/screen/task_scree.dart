import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List colors = [Colors.red, Colors.yellow, Colors.green];
  int initalIndex = 0;
  int returnIndex() {
    return initalIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: colors[returnIndex()],
            ),
            MaterialButton(
              color: Colors.grey,
              onPressed: () {
                if (initalIndex < 2) {
                  setState(() {
                    initalIndex++;
                  });
                } else if (initalIndex == 2) {
                  setState(() {
                    initalIndex = 0;
                  });
                }
              },
              child: const Text(
                "Button",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
