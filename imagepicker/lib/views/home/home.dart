import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  XFile? _image;
  final ImagePicker picker = ImagePicker();
  Future<void> _getImage(bool fromC) async {
    XFile? image;
    if (fromC) {
      image = await picker.pickImage(source: ImageSource.camera);
    } else {
      image = await picker.pickImage(source: ImageSource.gallery);
    }
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("image test"),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _image == null
                ? const Expanded(flex: 0, child: Icon(Icons.image))
                : Image.file(File(_image!.path)),
            ElevatedButton(
                onPressed: ()  {
                   showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: const Text("pick image from"),
                            actions: [
                              ElevatedButton(
                                  onPressed: () {
                                    _getImage(true);
                                    Navigator.pop(context);
                                  },
                                  child: const Text("camera")),
                              ElevatedButton(
                                  onPressed: () {
                                    _getImage(false);
                                    Navigator.pop(context);
                                  },
                                  child: const Text("gallery")),
                            ],
                          ));
                  ;
                },
                child: const Text("pick image"))
          ],
        ),
      ),
    );
  }
}
