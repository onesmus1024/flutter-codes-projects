import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nav drawer',
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('nav drawer'),
      ),
      drawer: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('nav drawer'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ItemView()));
            },
            title: Text('item 1'),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            title: Text('item 1'),
          )
        ],
      ),
    );
  }
}

class ItemView extends StatelessWidget {
  ItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'item view',
      home: Scaffold(
        appBar: AppBar(
          title: Text('item view'),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Center(
          child: Text('item 1'),
        ),
      ),
    );
  }
}
