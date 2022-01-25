import 'package:api_app/models/activities.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ones api test',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Activities"),
        ),
        body: FutureBuilder(
          future: getActivities(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.data.length == 0) {
              return const Center(
                child: Text("No task available"),
              );
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [Colors.blueAccent, Colors.blueGrey])),
                      width: double.infinity,
                      child: Card(
                        color: Colors.cyan,
                        elevation: 5,
                        child: ListTile(
                          title: Text(snapshot.data[index].name),
                          subtitle: Text(snapshot.data[index].description),
                        ),
                      ),
                    );
                  });
            }
          },
        ),
      ),
    );
  }
}
