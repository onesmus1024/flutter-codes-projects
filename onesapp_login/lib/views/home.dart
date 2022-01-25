import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "home",
      home: Scaffold(
        appBar: AppBar(
          
          actions: [Icon(Icons.sell),Icon(Icons.search),Icon(Icons.sell),Icon(Icons.search)],
          title: Text("home"),
        ),
        body: Container(
          child: Center(child: Text("click the floating button to go back"),),
        ),
        floatingActionButton:FloatingActionButton(
            tooltip: "go back",
            hoverColor: Colors.orange,
            child: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          )
      ),
    );
  }
}
