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
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Container(
        child: Center(
          child: Text(
            "No notifications yet",
            style: Theme.of(context).textTheme.caption,
          ),
        ),
      ),
    );
  }

}