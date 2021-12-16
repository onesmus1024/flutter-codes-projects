import 'package:flutter/material.dart';

class GestureDetector1 extends StatelessWidget {
  const GestureDetector1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("this is gesture detector app");
      },
      child: const Center(
        child: Text("Tap for action"),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'gestureDetector',
      home: Scaffold(
        body: Center(
          child: GestureDetector1(),
        ),
      ),
    );
  }
}

void main(List<String> args) {
  runApp(Home());
}
