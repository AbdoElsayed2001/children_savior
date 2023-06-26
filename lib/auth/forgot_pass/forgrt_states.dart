import 'package:kids_savior/models/forget_model.dart';
import 'package:kids_savior/models/login_model.dart';

abstract class ForgetStates {}

class ForgetInitialState extends ForgetStates {}

class ForgetLoadingState extends ForgetStates {}

class ForgetSuccessState extends ForgetStates {

  final ResponseModel forgetModel;

  ForgetSuccessState(this.forgetModel);
}

class ForgetErrorState extends ForgetStates
{
  final String error;
  ForgetErrorState(this.error);
}

