import 'package:kids_savior/models/forget_model.dart';
import 'package:kids_savior/models/login_model.dart';
import 'package:kids_savior/search/search_model.dart';

abstract class SearchStates {}

class SearchInitialState extends SearchStates {}

class SearchLoadingState extends SearchStates {}

class SearchSuccessState extends SearchStates {

  late final MyModel searchModel;

  SearchSuccessState(MyModel searchModel);
}

class SearchErrorState extends SearchStates
{
  final String error;
  SearchErrorState(this.error);
}

