import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tabs',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('KARU APP'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.dark_mode),
                ),
                Tab(
                  icon: Icon(Icons.account_balance_wallet),
                ),
                Tab(
                  icon: Icon(Icons.access_alarm),
                )
              ],
            ),
          ),
          body: TabBarView(children: [
            GridView.count(
              crossAxisCount: 2,
              children: [
                Center(
                  
                  child: Text(
                    'item 1',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Center(
                  child: Text('item 1'),
                ),
                Center(
                  child: Text('item 1'),
                ),
                Center(
                  child: Text('item 1'),
                )
              ],
            ),
            Icon(Icons.account_balance),
            Icon(Icons.access_alarm)
          ]),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text('KARU App')),
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  title: Text('item 1'),
                ),
                ListTile(
                  onTap:  () {
                    Navigator.pop(context);
                  },
                  title: Text('item 2'),
                )
              ],
            ),
          ),
        ));
  }
}
