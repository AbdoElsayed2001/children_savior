import 'package:flutter/material.dart';
import 'package:kids_savior/account/edit_email.dart';
import 'package:kids_savior/account/edit_name.dart';
import 'package:kids_savior/account/edit_phone.dart';
import 'package:kids_savior/auth/splash.dart';
import 'package:kids_savior/bottomNavBar/bottom_nav_screen.dart';
import 'package:kids_savior/home/about.dart';
import 'package:kids_savior/my_children/add_child.dart';
import 'package:kids_savior/my_children/child_details.dart';
import 'package:kids_savior/notification/notification.dart';
import 'package:kids_savior/search/matching.dart';
import 'package:kids_savior/settings/settings.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),

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
        "edit_phone": (context) {
          return Edit_Phone();
        },
        "edit_email": (context) {
          return Edit_Email();
        },
        "appNotification": (context) {
          return AppNotifications();
        },
        "child_details": (context) {
          return Child_details();
        },
        "about": (context) {
          return About();
        },
        "matching": (context) {
          return Matching();
        },
      },
    );
  }
}

