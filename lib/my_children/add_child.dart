import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Add_Child extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            size: 26,
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Add child",
          style: TextStyle(color: Colors.black, fontSize: 21),
        ),
      ),
      body: Container(),
    );
  }

}