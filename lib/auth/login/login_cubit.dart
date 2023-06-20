import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_savior/conistants/conistants.dart';
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
      token: token,
      data: {
        'email' : email,
        'password' : password,
      },
    ).then((value)
    {
       print(value.data);

       loginModel = LoginModel.fromJson(value.data);
       print(loginModel.data.access_token);

       emit(LoginSuccessState(loginModel));

    }).catchError((error){
      emit(LoginErrorState(error.toString()));
      print(error.toString());
    });
  }
}