import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      title: 'hello',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('KARU Beauty Classifier App'),
        ),
      body:  Center(
          child: Text("hello ones"),
        ),
      ),
    );
  }
}
