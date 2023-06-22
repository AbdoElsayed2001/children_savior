import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_savior/account/account.dart';
import 'package:kids_savior/conistants/conistants.dart';
import 'package:kids_savior/cubit/states.dart';
import 'package:kids_savior/home/home.dart';
import 'package:kids_savior/map/map.dart';
import 'package:kids_savior/models/home_model2.dart';
import 'package:kids_savior/models/showProfile_model.dart';
import 'package:kids_savior/my_children/my_children.dart';
import 'package:kids_savior/network/cache_helper.dart';
import 'package:kids_savior/network/dio_helper.dart';
import 'package:kids_savior/search/search.dart';

class AppCubit extends Cubit <AppStates> {
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

  void changeIndex(int index) {
    currentIndex = index;
    emit(AppBottomNavBarStates());
  }

  bool? isDark = false;

  void changeAppMode({ bool? fromShared}) {
    if (fromShared != null) {
      isDark = fromShared;
      emit(AppChangModeStates());
    }
    else {
      isDark = !isDark!;
      CacheHelper.putBoolean(key: "isDark", value: isDark!).then((value) {
        emit(AppChangModeStates());
      }
      );
    }
  }

 List <ChildrenResponse> homeModel = [];

  void getHomeData() {
    emit(LoadingHomeDataState());

    DioHelper.getData(
      url: "home",
      token: token,
    ).then((value) {


      homeModel = ChildrenResponse.fromJson(value.data) as List<ChildrenResponse>;
     print(homeModel[0].data[0].name);
      print('success');

      emit(SuccessHomeDataState());

    }).catchError((error) {

      print(error.toString());
      emit(ErrorHomeDataState());
    }
    );
  }

  ChildrenResponse? myChildrenModel;

  void getMyChildrenData() {
    emit(LoadingMyChildrenDataState());

    DioHelper.getData(
      url: "my-children",
      token: token,
    ).then((value) {

      print('success');
      ChildrenResponse myChildrenModel = ChildrenResponse.fromJson(value.data);
      print(myChildrenModel);

      emit(SuccessMyChildrenDataState());
    }).catchError((error) {

      print(error.toString());
      emit(ErrorMyChildrenDataState());
    }
    );
  }


  UserResponse? showProfileModel;

  void getProfileData() {
    emit(LoadingShowProfileDataState());

    DioHelper.getData(
      url: "profile",
      token: token,
    ).then((value) {

      print('success');
      UserResponse showProfileModel = UserResponse.fromJson(value.data);
      print(showProfileModel);

      emit(SuccessHomeDataState());
    }).catchError((error) {

      print(error.toString());
      emit(ErrorShowProfileDataState());
    }
    );
  }

}