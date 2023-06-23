import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kids_savior/auth/regester/register_cubit.dart';
import 'package:kids_savior/auth/regester/register_states.dart';

import '../../conistants/conistants.dart';
import '../../network/cache_helper.dart';
import '../widgets/auth_btn.dart';
import '../widgets/auth_field.dart';


class RegisterFields extends StatelessWidget {
  RegisterFields({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var addressController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit,RegisterStates> (
        listener: (context,state){

          if (state is RegisterSuccessState )
          {
            if (state.registerModel.status == 1 )
            {
              Fluttertoast.showToast(
                  msg: 'Your account has been registered successfully',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  fontSize: 16.0
              );

              CacheHelper.saveData(
                  key: 'Bearer access_token',
                  value: state.registerModel.data.access_token).then((value)
              {
                token = state.registerModel.data.access_token;
                Navigator.of(context).pushNamed("bottomNavScreen");
              }
              );
            }
          }
          else if(state is RegisterLoadingState)
          {
            Fluttertoast.showToast(
                msg: "The data is being validated",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.amber,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }
          else if(state is RegisterErrorState)
          {
            Fluttertoast.showToast(
                msg: RegisterCubit.get(context).registerModel.message,
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }
        },
        builder: (context,state)
        {
          return Form(
            key: formKey,
            child: Column(
              children: [
                AuthField( controller: nameController,
                  validation: (String? value ){
                    if (value!.isEmpty){
                      return 'please enter your name';
                    }
                  },
                  label: 'name',
                  type: TextInputType.name,
                ),
                const SizedBox(height: 6),
                AuthField( controller: emailController,
                  validation: (String? value ){
                    if (value!.isEmpty){
                      return 'please enter your email';
                    }
                  },
                  label: 'email',
                  type: TextInputType.emailAddress,
                ),
                const SizedBox(height: 6),
                AuthField( controller: phoneController,
                  validation: (String? value ){
                    if (value!.isEmpty){
                      return 'please enter your phone';
                    }
                  },
                  label: 'phone',
                  type: TextInputType.phone,
                ),
                const SizedBox(height: 6),
                AuthField( controller: passwordController,
                  validation: (String? value ){
                    if (value!.isEmpty){
                      return 'please enter your password';
                    }
                  },
                  label: 'Password',
                  type: TextInputType.visiblePassword,
                ),
                const SizedBox(height: 6),
                AuthField(controller: addressController,
                  validation: (String? value ){
                    if (value!.isEmpty){
                      return 'please enter your address';
                    }
                  },
                  label: 'address',
                  type: TextInputType.streetAddress,
                ),
                const SizedBox(height: 16),
                ConditionalBuilder(
                  condition: state is! RegisterLoadingState,
                  builder: (context) => AuthBtn(
                    title: 'Create Account',
                    onPressed: (){
                      if (formKey.currentState!.validate())
                      {
                        RegisterCubit.get(context).userRegister(
                          email: emailController.text,
                          password: passwordController.text,
                          name: nameController.text,
                          phone: phoneController.text,
                          address: addressController.text,
                        );
                      }
                      else {
                        print("error");
                      }
                    },
                  ),
                  fallback: (context)=> Center(child: CircularProgressIndicator()),
                ),
              ],
            ),
          );
        },
      ),

    );
  }
}
