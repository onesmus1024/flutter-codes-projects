import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'state management',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  double counter = 0.0;

  void increment() {
    setState(() {
      if (counter < 0.9) {
        counter += 0.1;
      } else if (counter >= 0.9) {
        counter = 0.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("state app"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("you have pressed the button"),
            Text("$counter"),
            ElevatedButton(
              onPressed: increment,
              child: Text("click me"),
            ),
            Slider(value: counter, onChanged: null)
          ],
        ),
      ),
    );
  }
}
