import 'package:flutter/material.dart';
import 'package:cusp/screens/sign_in.dart';
import 'package:cusp/screens/home.dart';

void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      // home: const  SignIn(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Colors.pink,
      ),
      routes: {
        SignIn.routName:(context)=>const SignIn(),
        Home.routName:(context)=>const Home(),
      },
    );
  }
}



