import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_savior/conistants/conistants.dart';
import 'package:kids_savior/models/login_model.dart';
import '../../network/dio_helper.dart';
import 'register_states.dart';

class RegisterCubit extends Cubit <RegisterStates>
{
  RegisterCubit() : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);

  late LoginModel registerModel;

  void userRegister({
    required String email,
    required String password,
    required String name,
    required String phone,
    required String address,
  })
  {
    emit(RegisterLoadingState());

    DioHelper.postData(
      url: "register",
      token: token,
      data: {
        'email' : email,
        'password' : password,
        'name' : name,
        'address' : address,
        'phone' : phone,
      },
    ).then((value)
    {
       print(value.data);

       registerModel = LoginModel.fromJson(value.data);
       //print(loginModel.data.access_token);

       emit(RegisterSuccessState(registerModel));

    }).catchError((error){
      emit(RegisterErrorState(error.toString()));
      print(registerModel.message);
      print(error.toString());
    });
  }
}