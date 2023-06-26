import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_savior/conistants/conistants.dart';
import 'package:kids_savior/main.dart';
import 'package:kids_savior/models/login_model.dart';
import 'package:kids_savior/search/search_model.dart';
import 'package:kids_savior/search/search_states.dart';

import '../../models/forget_model.dart';
import '../network/dio_helper.dart';

class SearchCubit extends Cubit <SearchStates>
{
  SearchCubit() : super(SearchInitialState());

  static SearchCubit get(context) => BlocProvider.of(context);

  late MyModel searchModel;

  void search({
    required String? image,
  })
  {
    emit(SearchLoadingState());
    DioHelper.postData(
      url: "search",
      token: token,
      data: {
        'photo' : image,
      },
    ).then((value)
    {
      // print(value.data);

      searchModel = MyModel.fromJson(value.data);
      print(searchModel.message);

      emit(SearchSuccessState(searchModel));

    }).catchError((error){
      emit(SearchErrorState(error.toString()));
      print(error.toString());
    });
  }
}