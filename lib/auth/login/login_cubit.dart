import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../network/dio_helper.dart';
import 'login_states.dart';

class LoginCubit extends Cubit <LoginStates>
{
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  void userLogin({
    required String email,
    required String password,
  }) {
    emit(LoginLoadingState());

    DioHelper.postData(
      url: "https://kids-saviour.megaa-soft.com/api/login",
      data: {
        'email' : email,
        'password' : password,
      },
    ).then((value)
    {
      print(value.data);
      emit(LoginSuccessState());
    }).catchError((error){
      emit(LoginErrorState(error.toString()));
    });
  }

}