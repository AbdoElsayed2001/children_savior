import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_savior/conistants/conistants.dart';
import 'package:kids_savior/models/login_model.dart';

import '../../models/forget_model.dart';
import '../../network/dio_helper.dart';
import 'forgrt_states.dart';

class ForgetCubit extends Cubit <ForgetStates>
{
  ForgetCubit() : super(ForgetInitialState());

  static ForgetCubit get(context) => BlocProvider.of(context);

  late ResponseModel forgetModel;

  void forgetPassword({
    required String email,
  })
  {
    emit(ForgetLoadingState());
    DioHelper.postData(
      url: "forget-password",
      token: '',
      data: {
        'email' : email,
      },
    ).then((value)
    {
      // print(value.data);

      forgetModel = ResponseModel.fromJson(value.data);
      //print(loginModel.data.access_token);

      emit(ForgetSuccessState(forgetModel));

    }).catchError((error){
      emit(ForgetErrorState(error.toString()));
      print(error.toString());
    });
  }
}