
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Edit_Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  label: Text("Edit name"), border: OutlineInputBorder()),
              keyboardType: TextInputType.name,
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
