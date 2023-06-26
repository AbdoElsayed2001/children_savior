import '../models/home_model2.dart';

abstract class AppStates {}

class AppInitialState extends AppStates {}

class AppBottomNavBarStates extends AppStates {}

class AppChangModeStates extends AppStates {}

class LoadingHomeDataState extends AppStates {}

class SuccessHomeDataState extends AppStates {
  late ChildrenResponse homeModel;
  SuccessHomeDataState(this.homeModel);
}

class ErrorHomeDataState extends AppStates {}

class LoadingMyChildrenDataState extends AppStates {}

class SuccessMyChildrenDataState extends AppStates {}

class ErrorMyChildrenDataState extends AppStates {}

class LoadingShowProfileDataState extends AppStates {}

class SuccessShowProfileDataState extends AppStates {}

class ErrorShowProfileDataState extends AppStates {}


