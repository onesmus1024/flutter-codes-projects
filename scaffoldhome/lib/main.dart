import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(onPressed: null, icon: Icon(Icons.menu),
        tooltip: 'Navigation',),
        title: Text('Test your Beauty'),
        actions: [IconButton(onPressed: null, icon: Icon(Icons.search))],
      ),
      body: const Center(
        child: Text("test your beauty"),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'ones is the developer',
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'onescode',
      home: Home(),
    );
  }
}

void main(List<String> args) {
  runApp(Myapp());
}
