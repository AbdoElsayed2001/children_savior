import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            size: 26,
            Icons.arrow_back,
           // color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.black, fontSize: 21),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              Center(
                child: Icon(
                  Icons.settings,
                  size: 88,
                  color: Colors.blue,
                ),
              ),
              Center(
                child: Text(
                  "Settings",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ListTile(
                title: Text(
                  "Language",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                leading: Icon(
                  Icons.language,
                  color: Colors.black,
                ),
                horizontalTitleGap: 0,
              ),
              ListTile(
                title: Text(
                  "Dark Mode",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                leading: Icon(
                  Icons.dark_mode_outlined,
                  color: Colors.black,
                ),
                horizontalTitleGap: 0,
              ),
              ListTile(
                title: Text(
                  "Log Out",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                leading: Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
                horizontalTitleGap: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
