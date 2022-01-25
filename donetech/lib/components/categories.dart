// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categorylist = [
    "Android development",
    "application upgrade",
    "application development",
    "application maintenace",
    "application maintenace",
    "search engine optimazation",
    "website development",
    "website upgrate",
    "Digital makerting",
    "Getting your business online",
    "managing your advertising compaign",
    "email marketing",
    "Computer network",
    "cctv installation",
    "network installation",
    "network maintainance"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: categorylist.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            child: Column(
              children: [
                ListTile(
                  subtitle: Text(" ${categorylist[index]}"),
                ),
                Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("DEMO")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("ORDER"))
                ])
              ],
            ),
          );
        });
  }
}
