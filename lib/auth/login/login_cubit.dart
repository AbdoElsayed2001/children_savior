import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_savior/models/login_model.dart';

import '../../network/dio_helper.dart';
import 'login_states.dart';

class LoginCubit extends Cubit <LoginStates>
{
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  late LoginModel loginModel;

  void userLogin({
    required String email,
    required String password,
  })
  {
    emit(LoginLoadingState());
    DioHelper.postData(
      url: "login",
      data: {
        'email' : email,
        'password' : password,
      },
    ).then((value)
    {
       print(value.data);

       loginModel = LoginModel.fromJson(value.data);
       // print(loginModel.status);
       // print(loginModel.message);
       // print(loginModel.data.address);

       emit(LoginSuccessState(loginModel));

    }).catchError((error){
      emit(LoginErrorState(error.toString()));
      print(error.toString());
    });
  }
}