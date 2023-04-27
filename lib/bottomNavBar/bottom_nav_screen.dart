//import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_savior/cubit/cubit.dart';
import 'package:kids_savior/cubit/states.dart';

class BottomNavScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer <AppCubit , AppStates>(
        listener: (BuildContext context , AppStates state){},
        builder: (BuildContext context , AppStates state)
        {
          AppCubit cubit = AppCubit.get(context);

          return  Scaffold(
            appBar: AppBar(
              title: Text(
                "Children Savior",
                style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 24,fontStyle: FontStyle.italic,
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.notifications_none_rounded),
                  //color: Colors.black,
                  iconSize: 30,
                  onPressed: () {
                    Navigator.of(context).pushNamed("appNotification");
                  },
                ),
                IconButton(
                  icon: Icon(Icons.settings_outlined),
                  //color: Colors.black,
                  iconSize: 30,
                  onPressed: () {
                    Navigator.of(context).pushNamed("settings");
                  },
                ),
               // SizedBox(width: 2,),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (index)
                {
                  cubit.changeIndex(index);
                },
                iconSize: 30,
                elevation: 0.0,
                // selectedItemColor: Colors.blue,
                // unselectedItemColor: Colors.black,
                type: BottomNavigationBarType.fixed,
                selectedFontSize: 11,
                unselectedFontSize: 11,
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),label: "Home"),
                  BottomNavigationBarItem(icon: Icon(Icons.search,),label: "Search",),
                  BottomNavigationBarItem(icon: Icon(Icons.child_care_rounded,),label: "My Children",),
                  BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined,),label: "Location",),
                  BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined,),label: "Account",),
                ]
            ),
            body: Container(
              child: cubit.Screens[cubit.currentIndex],
            ),
            // ConditionalBuilder(
            //   condition : true,
            //   builder : (context) => cubit.Screens[cubit.currentIndex],
            //   fallback : (context) => Center(child: CircularProgressIndicator(color: Colors.blue,)),
            // newwwwwww
            // ),
          );
        },
      ),
    );
  }
}
