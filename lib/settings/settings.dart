import 'package:flutter/material.dart';
import 'package:kids_savior/cubit/cubit.dart';
import 'package:kids_savior/network/cache_helper.dart';

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
          style: Theme.of(context).textTheme.headline6,
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
                  //color: Colors.blue,
                ),
              ),
              Center(
                child: Text(
                  "Settings",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ListTile(
                title: Text(
                  "Language",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                leading: Icon(
                  Icons.language,
                  //color: Colors.black,
                ),
                horizontalTitleGap: 0,
              ),
              ListTile(
                title: Text(
                  "Dark Mode",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                leading: Icon(
                  Icons.dark_mode_outlined,
                 // color: Colors.black,
                ),
                trailing: IconButton(
                    onPressed: (){
                      AppCubit.get(context).changeAppMode();
                    },
                    icon: Icon(Icons.brightness_4_outlined,),
                ),
                horizontalTitleGap: 0,
              ),
              ListTile(
                title: TextButton(
                  style: ButtonStyle(
                    alignment: AlignmentDirectional.centerStart
                  ),
                  onPressed: (){
                    CacheHelper.removeData(Key: 'token').then((value) {
                      if (value)
                        {
                          Navigator.of(context).pushNamed("login");
                        }
                    });
                  },
                  child: Text(
                    textAlign: TextAlign.start,
                  "Log Out",
                  style: Theme.of(context).textTheme.bodyText1,)
                ),
                leading: Icon(
                  Icons.logout,
                 // color: Colors.black,
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
