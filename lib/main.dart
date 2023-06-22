import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kids_savior/account/edit_email.dart';
import 'package:kids_savior/account/edit_name.dart';
import 'package:kids_savior/account/edit_phone.dart';
import 'package:kids_savior/auth/login/login.dart';
import 'package:kids_savior/auth/login/login_body.dart';
import 'package:kids_savior/auth/splash.dart';
import 'package:kids_savior/bloc_observer/bloc_observer.dart';
import 'package:kids_savior/cubit/cubit.dart';
import 'package:kids_savior/cubit/states.dart';
import 'package:kids_savior/home/about.dart';
import 'package:kids_savior/my_children/add_child.dart';
import 'package:kids_savior/my_children/child_details.dart';
import 'package:kids_savior/network/cache_helper.dart';
import 'package:kids_savior/network/dio_helper.dart';
import 'package:kids_savior/notification/notification.dart';
import 'package:kids_savior/search/matching.dart';
import 'package:kids_savior/settings/settings.dart';
import 'package:get/get.dart';
import 'bottomNavBar/bottom_nav_screen.dart';
import 'conistants/conistants.dart';


void main() async
{
  Bloc.observer = MyBlocObserver();

  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  await DioHelper.init();

  bool? isDark = CacheHelper.getBoolean(key: "isDark");
  token = CacheHelper.getData(key: 'Bearer access_token');
  
  runApp(MyApp(
    isDark ?? true,
  ));
}

class MyApp extends StatelessWidget {

  final bool isDark;
  MyApp(
      this.isDark,);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (BuildContext context)
      {
        return AppCubit()..changeAppMode(fromShared: isDark)..getHomeData()..getMyChildrenData()..getProfileData();
        },
      child: BlocConsumer<AppCubit , AppStates>(
      listener: (context, state){},
      builder: (context, state){
        return GetMaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
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
                  color: Colors.black
              ),
            ),
            iconTheme: IconThemeData(
              color: Colors.blue,
            ),
            listTileTheme: ListTileThemeData(
              iconColor: Colors.blue,

            ),
            outlinedButtonTheme: OutlinedButtonThemeData(
              style: ButtonStyle(
                backgroundColor:
                   MaterialStateProperty.all(Colors.white),
              )
            ),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.blue,
            ),
            progressIndicatorTheme: ProgressIndicatorThemeData(
              color: Colors.blue,
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.black,
              elevation: 20.0,
              backgroundColor: Colors.white,
            ),
            textTheme: TextTheme(
              bodyText1: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              bodyText2: TextStyle(
                color: Colors.blue,
                fontSize: 14,
              ),
              caption: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              headline6: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              headline1: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  fontStyle: FontStyle.italic
              ),
            ),
          ),
          darkTheme: ThemeData(
            //primarySwatch: HexColor("007acc"),
            scaffoldBackgroundColor: HexColor("18191a"),
            appBarTheme: AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: HexColor("18191a"),
                statusBarIconBrightness: Brightness.light,
              ),
              backgroundColor: HexColor("18191a"),
              elevation: 0.0,
              titleTextStyle: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24,fontStyle: FontStyle.italic,
              ),
              iconTheme: IconThemeData(
                  color: Colors.white
              ),
            ),
            iconTheme: IconThemeData(
              color: HexColor("007acc"),
            ),
            listTileTheme: ListTileThemeData(
              iconColor: HexColor("007acc"),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(HexColor("007acc")),
                )
            ),
            outlinedButtonTheme: OutlinedButtonThemeData(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(HexColor("282828")),
                )
            ),
            progressIndicatorTheme: ProgressIndicatorThemeData(
              color: HexColor("007acc"),
            ),
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            cardTheme: CardTheme(
                color: HexColor("282828")
            ),
            shadowColor: Color(0x000000),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: HexColor("007acc"),
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: HexColor("007acc"),
              unselectedItemColor: Colors.grey,
              elevation: 20.0,
              backgroundColor: HexColor("18191a"),
            ),
            radioTheme: RadioThemeData(
              fillColor: MaterialStateProperty.all(HexColor("007acc")),
            ),
            textTheme: TextTheme(
              bodyText1: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              bodyText2: TextStyle(
                color: HexColor("007acc"),
                fontSize: 14,
              ),
              caption: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
              headline6: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              headline1: TextStyle(
                  color: HexColor("007acc"),
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  fontStyle: FontStyle.italic
              ),
            ),
          ),
          themeMode: AppCubit.get(context).isDark! ? ThemeMode.dark : ThemeMode.light,
          debugShowCheckedModeBanner: false,
          title: 'Children Savior',
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
            "bottomNavScreen": (context) {
              return BottomNavScreen();
            },
          },
        );
      },
    ),
    );
  }
}

