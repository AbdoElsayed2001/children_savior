import 'package:flutter/material.dart';
import 'package:kids_savior/account/edit_name.dart';
import 'package:kids_savior/bottomNavBar/bottom_nav_screen.dart';
import 'package:kids_savior/my_children/add_child.dart';
import 'package:kids_savior/notification/notification.dart';
import 'package:kids_savior/settings/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BottomNavScreen(),

      routes: {
        "settings": (context) {
          return Settings();
        },
        "add_child": (context) {
          return Add_Child();
        },
        "edit_name": (context) {
          return Edit_Name();
        },
        "appNotification": (context) {
          return AppNotifications();
        },
      },
    );
  }
}

