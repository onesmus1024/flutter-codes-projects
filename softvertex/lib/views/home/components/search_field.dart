import 'package:flutter/material.dart';

Widget searchbox() {
  return Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.3),
      borderRadius: BorderRadius.circular(20)
    ),
    child: TextField(
      
      decoration: InputDecoration(
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      hintText: 'search',
      hintStyle: TextStyle(color: Colors.white),
      icon: Icon(Icons.search),
      ),
      autofocus: false,
    ),
  );
}
