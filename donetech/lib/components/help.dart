// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HelpComponent extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  HelpComponent({Key? key}) : super(key: key);

  @override
  _HelpComponentState createState() => _HelpComponentState();
}

class _HelpComponentState extends State<HelpComponent> {
  List<String> helplist = [
    "How can I get YOUR product?",
    "Procedure to get your product?",
    "Any license required?",
    "Are your product free for the first few days?",
    "Shall I receice maintenance?",
    "Where are you located?",
    "Our website?",
    "Which technology do you use",
    "Types of upgrade you support",
    ""
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: helplist.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            child: ListTile(
              title: Text("${index + 1}. ${helplist[index]}"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          );
        });
  }
}
