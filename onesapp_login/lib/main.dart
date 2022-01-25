import 'package:flutter/material.dart';
import 'views/MyForm.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ones',
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.restaurant_menu_rounded),Text("welcome to summertect")],
          ),
        ),
        body:  Center(
          child: MyForm(),
        ),
      ),
    );
  }
}
