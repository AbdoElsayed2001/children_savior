import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Search extends StatefulWidget{
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  File? _image;
  final imagePicker = ImagePicker();

  Future getImage({required ImageSource source }) async{
    final image = await imagePicker.pickImage(source: source);
    setState((){
      _image = File(image!.path);
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //     onPressed: (){
      //      getImage(source: ImageSource.gallery);
      //     },
      //   child: Icon(Icons.camera_alt),
      //   //backgroundColor: Colors.blue,
      // ),
      body: Container(
        child: Center(
          child: _image == null ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  padding:  MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15, horizontal: 20),),
                  fixedSize: MaterialStateProperty.all(Size(180, 45)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  ),
                ),
                onPressed: () {
                  getImage(source: ImageSource.camera);
                },
                child:  Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.camera_alt,size: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text("Take Photo",style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 16,),),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              ElevatedButton(
                style: ButtonStyle(
                  padding:  MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15, horizontal: 20),),
                  fixedSize: MaterialStateProperty.all(Size(180, 45)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  ),
                ),
                onPressed: () {
                  getImage(source: ImageSource.gallery);
                },
                child:  Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.photo,size: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text("Choose Photo",style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 16,),),
                      )
                    ],
                  ),
                ),
              ),
            ],) : Column(
            children: [
              Expanded(child: Image.file(_image!)),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding:  MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15, horizontal: 20),),
                    fixedSize: MaterialStateProperty.all(Size(130, 45)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Search"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}