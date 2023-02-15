import 'package:flutter/material.dart';

class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        child: Icon(Icons.camera_alt),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: Text(
            "Add some pictures for the child to identify him",
            style: TextStyle(color: Colors.black26,
            fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}