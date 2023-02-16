import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Edit_Phone extends StatelessWidget {
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
          "Edit Phone",
          style: TextStyle(color: Colors.black, fontSize: 21),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  label: Text("Edit phone"), border: OutlineInputBorder()),
              keyboardType: TextInputType.phone,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(Size(150, 45)),
            ),
            onPressed: () {},
            child: Text("Save"),
          ),
        ],
      ),
    );
  }
}