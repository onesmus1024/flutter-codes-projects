import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key, required this.image, required this.description})
      : super(key: key);
  final image;
  final description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0.1,
      ),
      body: ListView(
        children: [Image.network(image), Text(description)],
      ),
    );
  }
}
