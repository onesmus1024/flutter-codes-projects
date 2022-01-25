// ignore_for_file: prefer_const_constructors

import 'package:donetech/views/home.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyForm({Key? key}) : super(key: key);

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formkey = GlobalKey<FormState>();

  //form for login
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WELCOME TO DONETECH"),),
      body: Center(child: Form(
        key: _formkey,
        child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "LOGIN",
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "enter your username"),
                    validator: (value) {
                      if (value != 'Donetech') {
                        return 'please enter your username';
                      } else {
                        return null;
                      }
                    }),
              ),
              //padding for input widget
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "enter your password"),
                    validator: (value) {
                      if (value != 'techdone') {
                        return 'please enter your password';
                      } else {
                        return null;
                      }
                    }),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("You have successfully login")));
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Homepage()));
                      }
                    },
                    child: Text("submit")),
              )
            ])),),
    );
  }
}
