import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class ImageInput extends StatefulWidget {
  const ImageInput({Key? key}) : super(key: key);

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {

  XFile? _image;
  Future<void> pick_image(bool isFromCamera) async{
    XFile? image;
    final picker = ImagePicker();
    if(isFromCamera)
      {
        image = await picker.pickImage(source:ImageSource.camera);
      }
    else{
      image= await picker.pickImage(source: ImageSource.gallery);
    }

    setState(() {
      _image = _image;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(children:  [
      const Text("pick an image"),
      ElevatedButton(onPressed: (){
        showDialog(context: context, builder: (context)=> AlertDialog(
          title: const Text("pick image from ?"),
          actions: [
            ElevatedButton(onPressed: (){
              pick_image(true);
            }, child: const Text("camera")),
            ElevatedButton(onPressed: (){
              pick_image(false);
            }, child: const Text("gallery")),
          ],
        ));
      }, child:const  Text("pick "))
    ],);
  }
}
