import 'package:flutter/material.dart';

class AppNotifications extends StatelessWidget{
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
          "Notifications",
          style: TextStyle(color: Colors.black, fontSize: 21),
        ),
      ),
      body: Container(
        child: Center(
          child: Text(
            "No notifications yet",
            style: TextStyle(color: Colors.black26,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

}