import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Edit_Name extends StatelessWidget{
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
          "Edit Name",
          style: TextStyle(color: Colors.black, fontSize: 21),
        ),
      ),
      body: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.name,
            expands: true,
          ),
          ElevatedButton(onPressed: (){}, child: Text("Edit"),),
        ],
      ),
    );
  }

}