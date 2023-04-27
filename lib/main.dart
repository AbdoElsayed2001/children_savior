import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 24,fontStyle: FontStyle.italic,
          ),
          iconTheme: IconThemeData(
              color: Colors.white
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blue,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          elevation: 20.0,
          backgroundColor: Colors.white,
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(),
        ),
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: HexColor("1e1e1e"),
        appBarTheme: AppBarTheme(
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: HexColor("252526"),
            statusBarIconBrightness: Brightness.light,
          ),
          backgroundColor: HexColor("1e1e1e"),
          elevation: 0.0,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 24,fontStyle: FontStyle.italic,
          ),
          iconTheme: IconThemeData(
            color: Colors.white
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blue,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: HexColor("007acc"),
          unselectedItemColor: Colors.white,
          elevation: 20.0,
          backgroundColor: HexColor("1e1e1e"),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(),
        ),
      ),
      themeMode: ThemeMode.dark,
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

