// ignore_for_file: prefer_const_constructors, unused_element, unnecessary_new

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<CameraPage> {
  List<PickedFile> images = [];
  ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usando la camara de flutter'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.file(File(images[index].path));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _optionsDialogBox,
      ),
    );
  }

  Future<void> _optionsDialogBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text('Abrir cámara'),
                    onTap: _openCamera,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  GestureDetector(
                    child: new Text('Abrir galeria'),
                    onTap: _openGallery,
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _openCamera() async {
    PickedFile? picture =
        // ignore: deprecated_member_use
        await imagePicker.getImage(source: ImageSource.camera);
    // ignore: use_build_context_synchronously
    Navigator.pop(context);
    setState(() {
      images.add(picture!);
    });
  }

  void _openGallery() async {
    PickedFile? picture =
        await imagePicker.getImage(source: ImageSource.gallery);
    Navigator.pop(context);
    setState(() {
      images.add(picture!);
    });
  }
}
