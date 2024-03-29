import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:kids_savior/auth/widgets/auth_back.dart';
import 'package:kids_savior/conistants/conistants.dart';
import '../../network/cache_helper.dart';
import '../forgot_pass/forgot_pass.dart';
import '../regester/register.dart';
import '../widgets/auth_btn.dart';
import '../widgets/auth_field.dart';
import '../widgets/widgets.dart';
import 'login_cubit.dart';
import 'login_states.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override

  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener: (context,state) {

          if (state is LoginSuccessState )
          {
            if (state.loginModel.status == 1 )
            {
              // print(state.loginModel.message);
              // print(state.loginModel.data.access_token);
              // print(state.loginModel.data.name);

              Fluttertoast.showToast(
                  msg: 'Logged in successfully',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  fontSize: 16.0
              );

              CacheHelper.saveData(
                  key: 'Bearer access_token',
                  value: state.loginModel.data.access_token).then((value)
              {
                token = state.loginModel.data.access_token;
                Navigator.of(context).pushNamed("bottomNavScreen");
              }
              );
            }
          }
          else if(state is LoginLoadingState)
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
          else if(state is LoginErrorState)
          {
            Fluttertoast.showToast(
                msg: "Login information is incorrect",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }

        } ,
        builder:  (context , state)
        {
          return AuthBack(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const Spacer(),
                    const HeaderTitle(title: 'Sign In'),
                    const SizedBox(height: 16),
                    AuthField(
                      isPassowrd: false,
                      controller: emailController,
                      validation: (String? value){
                        if (value!.isEmpty){
                          return 'email is not correct';
                        }
                      }, type: TextInputType.emailAddress,
                      label: 'Email',
                    ),
                    const SizedBox(height: 32),
                    AuthField(
                      isPassowrd: true,
                      controller: passwordController,
                      validation: (String? value){
                        if (value!.isEmpty){
                          return 'password is too short ';
                        }
                      },
                      label: 'Password',
                      type: TextInputType.visiblePassword,
                    ),
                    const SizedBox(height: 8),
                    ForgotPass(
                      onPressed: () => Get.to(const ForgotScreen()),
                    ),
                    const SizedBox(height: 8),
                    ConditionalBuilder(
                      condition: state is! LoginLoadingState,
                      builder: (context) => AuthBtn(
                        title: 'Sign In',
                        onPressed: (){
                          if (formKey.currentState!.validate())
                          {
                            LoginCubit.get(context).userLogin(
                                email: emailController.text,
                                password: passwordController.text,
                            );
                          }
                          else {
                            print("error");
                          }
                        },
                      ),
                      fallback: (context)=> Center(child: CircularProgressIndicator()),
                    ),
                    const SizedBox(height: 16),
                    GoSignUp(
                      onPressed: () => Get.to(const RegisterScreen()),
                    ),
                    const SizedBox(height: 36),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
