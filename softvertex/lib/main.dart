import 'package:flutter/material.dart';
import 'package:softvertex/views/home/home.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch:Colors.purple,
        appBarTheme: AppBarTheme(
          // color: Colors.purpleAccent,
        ),
        
      ),
      debugShowCheckedModeBanner: false,
      title: 'sofvertex',
      home: Home(),
    );
  }
}
