import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  Counter({Key? key}) : super(key: key);

  @override
  Increment createState() => Increment();
}

class Increment extends State<Counter> {
  int _countvalue = 0;

  void _increment() {
    setState(() {
      _countvalue++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(onPressed: _increment, child: Text('increment')),
        Text('count $_countvalue'),
      ],
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "stateful widget",
      home: Scaffold(appBar: AppBar(
        title:Text('statefulwidget App'),
        leading: IconButton(onPressed: null ,icon: Icon(Icons.menu)),
        actions: [
          
          IconButton(onPressed: null, icon:Icon(Icons.search) ),
          IconButton(onPressed: null, icon: Icon(Icons.call)),
          IconButton(onPressed: null, icon: Icon(Icons.call))

        ],
      ),
      body: SafeArea(child: Center(
        child: Counter(),
      ),),
      ),
    );
  }
}

void main(List<String> args) {
  runApp(Home());
}
