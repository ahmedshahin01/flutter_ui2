import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'Drower1.dart';
import 'main.dart';

class MyImagePicker extends StatefulWidget {
  @override
  _MyImagePickerState createState() => _MyImagePickerState();
}

class _MyImagePickerState extends State<MyImagePicker> {
  final ImagePicker _picker = ImagePicker();
  File? pickedImege;

  ferchEmage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image == null) {
      return;
    }

    setState(() {
      pickedImege = File(image.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar1,
      drawer: Mydrower(),
      body: Center(
        child: pickedImege == null ? null : Image.file(pickedImege!),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ferchEmage,
        child: Icon(Icons.add),
      ),
    );
  }
}
