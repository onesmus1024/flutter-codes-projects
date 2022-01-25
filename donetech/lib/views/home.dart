// ignore_for_file: prefer_const_constructors

import 'package:donetech/components/categories.dart';
import 'package:donetech/components/help.dart';
import 'package:donetech/components/homebottomtabcomponent.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int tabs = 0;
  List<Widget> bottomtabscomponents = [Home(),Categories(),HelpComponent(),Center(child: CircularProgressIndicator(),)];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("donetech"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Donetech1024")),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.wine_bar),
              title: Text("About us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("FAQ"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.design_services),
              title: Text("Services"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.party_mode),
              title: Text("Parters"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("contact"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: bottomtabscomponents[tabs],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              backgroundColor: Colors.blue),
         
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'categories',
            backgroundColor:Colors.blueGrey
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'help',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.account_tree),
            label: 'account',
            tooltip: 'account'
          ),
        ],
        backgroundColor: Colors.cyan,
        currentIndex: tabs,
        onTap: (value) {
          setState(() {
            tabs = value;
          });
        },
      ),
    );
  }
}
