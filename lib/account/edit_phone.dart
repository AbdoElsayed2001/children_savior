import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Edit_Phone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            size: 26,
            Icons.arrow_back,
            //color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Edit Phone",
          style: Theme.of(context).textTheme.headline6,
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
              padding:  MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15, horizontal: 20),),
              fixedSize: MaterialStateProperty.all(Size(130, 45)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              ),
            ),
            onPressed: () {},
            child: Text("Save"),
          ),
        ],
      ),
    );
  }
}