import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, Key? key}) : super(key: key);

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 56.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: [
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.menu),
            tooltip: 'navigaton bar',
          ),
          Expanded(child: title),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
          )
        ],
      ),
    );
  }
}

class Myscoff extends StatelessWidget {
  const Myscoff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(title: Text('KARU beauty Classifier App')),
          Expanded(
              child: const Center(
            child: Text('TEST YOUR BEAUTY'),
          ))
        ],
      ),
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'beauty',
      home: SafeArea(child: Myscoff(),),
    );
  }
}

void main(List<String> args) {
  runApp(App());
}
