import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // implement build
    return MaterialApp(
      title: 'ones app',
       theme: ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.dark,
    primaryColor: Colors.lightBlue[800],

    // Define the default font family.
    fontFamily: 'Georgia',

    // Define the default `TextTheme`. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
  ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int selecteditem = 0;
  void itemset(int index) {
    setState(() {
      selecteditem = index;
    });
  }

  List<Widget> screens = <Widget>[
    Container(
      width: double.infinity,
      child: ListView(
        children: [
          Card(
            color: Colors.blueAccent,
            elevation: 5,
            child: Text(
              "Home",
              style: TextStyle(
                height: 10,
      
              
              ),
            ),
          ),
          Card(
            color: Colors.deepOrangeAccent,
            elevation: 5,
            child: Text(
              "Home",
              style: TextStyle(
                height: 10,
              ),
            ),
          ),
          Card(
            color: Colors.lightGreen,
            elevation: 5,
            child: Text(
              "Home",
              style: TextStyle(
                height: 10,
              ),
            ),
          ),
           Card(
            color: Colors.blueAccent,
            elevation: 5,
            child: Text(
              "Home",
              style: TextStyle(
                height: 10,
              ),
            ),
          ),
          Card(
            color: Colors.deepOrangeAccent,
            elevation: 5,
            child: Text(
              "Home",
              style: TextStyle(
                height: 10,
              ),
            ),
          ),
          Card(
        
            color: Colors.lightGreen,
            elevation: 5,
            child: Text(
              "Home",
              style: TextStyle(
                height: 10,
              ),
            ),
          )
          
        ],
      ),
    ),
    CircularProgressIndicator(),
    Text("profile")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ones ecommerce"),
        actions: [IconButton(onPressed: null, icon: Icon(Icons.search))],
      ),
      drawer: Drawer(
        elevation: 20,
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("ones ecomerce app"),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Account'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Fovarite'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Weather today'),
              leading: Icon(Icons.beach_access),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Music"),
              leading: Icon(Icons.audiotrack),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: screens.elementAt(selecteditem),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blueGrey,
              tooltip: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: "Account",
              backgroundColor: Colors.cyan,
              tooltip: 'accont'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_add),
              backgroundColor: Colors.red,
              label: 'Profile',
              tooltip: 'Profile')
        ],
        backgroundColor: Colors.blue,
        currentIndex: selecteditem,
        onTap: itemset,
        selectedFontSize: 20,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
