import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              children: [
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_constructors
                    children: [
                     const Text("learn to code with us"),
                      Image.asset(
                        "assets/images/Coding _Monochromatic.png",
                        width: 100,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
