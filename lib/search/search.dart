import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';

class Search extends StatefulWidget{
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  late File _image;
  final imagePicker = ImagePicker();

  Future getImage() async{
    final image = await imagePicker.getImage(source: ImageSource.camera);
    setState((){
      _image = File(image!.path);
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){
           getImage();
          },
        child: Icon(Icons.camera_alt),
        //backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: _image == null ? Text("Add some pictures for the child to identify him", style: Theme.of(context).textTheme.caption,) : Image.file(_image),
        ),
      ),
    );
  }
}