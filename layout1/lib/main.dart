import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'layout App',
      home: Scaffold(
        appBar: AppBar(
          
          leading: IconButton(icon: Icon(Icons.menu),
          tooltip: "navigation",
          onPressed: null,),
          title: Text('Layout App'),
        ),
        body: ListView(
          
          children: [Card(child: Image.asset('ones1.jpeg'),)
            ,Center(
            child: title(),
          ),Image.asset('ones.png')],
        ),
      ),
    );
  }
}

Widget title() {
  Widget container1 = Container(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: null, icon: Icon(Icons.share)),IconButton(onPressed: null, icon: Icon(Icons.alt_route)),IconButton(onPressed: null, icon: Icon(Icons.call))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text("SHARE"),Text('ROUTE'),Text('CALL')],
        ),
        Card(
      child:  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [Text("indian ocean best view"), Icon(Icons.star), Text('41')],
      )],
    ),
    ),
    Card(
      child: Text("Next, diagram each row. The first row, called the Title section, has 3 children: a column of text, a star icon, and a number. Its first child, the column, contains 2 lines of text. That first column takes a lot of space, so it must be wrapped in an Expanded widget."),
    ),
      ],
    ),
  );

  return container1;
}
