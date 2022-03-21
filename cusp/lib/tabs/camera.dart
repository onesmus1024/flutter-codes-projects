
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  XFile? _image;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getImage();
  }

  Future<void> _getImage() async {
    final ImagePicker _picker = ImagePicker();
    XFile? image = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _image == null
          ? const Text("capture your best moment")
          :  Image.file(File(_image!.path)),
    );
  }
}
