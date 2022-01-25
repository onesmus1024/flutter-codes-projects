// ignore_for_file: prefer_const_constructors

import 'package:donetech/views/login.dart';
import 'package:flutter/material.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.blue,
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.greenAccent, Colors.cyanAccent])),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Welcome To",
            style: TextStyle(fontSize: 20),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text("Donetech where your software dream is achieved"),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyForm()));
          }, child: Text("login")),
        ]),
      ),
    );
  }
}
