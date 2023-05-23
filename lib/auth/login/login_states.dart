abstract class LoginStates {}

class LoginInitialState extends LoginStates {}

class LoginSuccessState extends LoginStates {}

class LoginErrorState extends LoginStates
{
  final String error;
  LoginErrorState(this.error);
}

class LoginLoadingState extends LoginStates {}