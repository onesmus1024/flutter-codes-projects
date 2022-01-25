import 'package:flutter/material.dart';
import 'home.dart';

class MyForm extends StatefulWidget {
  MyForm({Key? key}) : super(key: key);

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formkey = GlobalKey<FormState>();

  //form for login
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: Column(
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
                      if (value == null || value.isEmpty) {
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
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "enter your password"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
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
                            const SnackBar(content: Text("PROCESSING")));
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      }
                    },
                    child: Text("submit")),
              )
            ]));
  }
}
