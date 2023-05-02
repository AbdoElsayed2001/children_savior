import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_savior/account/account.dart';
import 'package:kids_savior/cubit/states.dart';
import 'package:kids_savior/home/home.dart';
import 'package:kids_savior/map/map.dart';
import 'package:kids_savior/my_children/my_children.dart';
import 'package:kids_savior/network/cache_helper.dart';
import 'package:kids_savior/search/search.dart';

class AppCubit extends Cubit <AppStates>
{
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> Screens =
      [
        Home(),
        Search(),
        My_Children(),
        Maps(),
        Account(),
      ];

  void changeIndex(int index)
  {
    currentIndex = index;
    emit(AppBottomNavBarStates());
  }

  bool? isDark = false;
  void changeAppMode({ bool? fromShared})
  {
    if (fromShared != null)
      {
        isDark = fromShared;
        emit(AppChangModeStates());
      }
    else
    {
      isDark = !isDark!;
      CacheHelper.putBoolean(Key: "isDark", value: isDark!).then((value)
      {
        emit(AppChangModeStates());
      }
      );
    }

  }

}