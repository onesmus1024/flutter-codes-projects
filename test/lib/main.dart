import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ones e-commerce',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("softvec"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text("ones"),
                duration: const Duration(seconds: 5),
                action: SnackBarAction(
                    label: "undo",
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: const Text("test"),
                                content: const Text("hello there"),
                                actions: [
                                  ElevatedButton(
                                      onPressed: () {
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (context) => SizedBox(
                                              height: MediaQuery.of(context).size.width,
                                                child:Column(
                                              children: const [
                                                ListTile(title: Text("ones"),),
                                                ListTile(title: Text("ones"),),
                                                ListTile(title: Text("ones"),),
                                                ListTile(title: Text("ones"),),
                                                ListTile(title: Text("ones"),),
                                                ListTile(title: Text("ones"),),


                                              ],
                                            )));
                                      },
                                      child: const Text("yes")),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("No"))
                                ],
                              ));
                    }),
              ));
            },
            child: const Text("click me")),
      ),
    );
  }
}
