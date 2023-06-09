import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:kids_savior/auth/widgets/auth_back.dart';
import 'package:kids_savior/cubit/cubit.dart';
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

          if (state is LoginSuccessState)
          {
            if (state.loginModel.status == 1 )
            {
              print('1111');
              print(state.loginModel.message);
              print(state.loginModel.data.access_token);
              print(state.loginModel.data.name);
              // Fluttertoast.showToast(
              //     msg: state.loginModel.message,
              //     toastLength: Toast.LENGTH_SHORT,
              //     gravity: ToastGravity.BOTTOM,
              //     timeInSecForIosWeb: 1,
              //     backgroundColor: Colors.green,
              //     textColor: Colors.white,
              //     fontSize: 16.0
              // );

              CacheHelper.saveData(
                  key: 'access_token',
                  value: state.loginModel.data.access_token).then((value)
              {
                Navigator.of(context).pushNamed("bottomNavScreen");
              }
              );

            }else
            {
              print('00000');
              print(state.loginModel.message);
              // Fluttertoast.showToast(
              //     msg: state.loginModel.message,
              //     toastLength: Toast.LENGTH_SHORT,
              //     gravity: ToastGravity.BOTTOM,
              //     timeInSecForIosWeb: 1,
              //     backgroundColor: Colors.red,
              //     textColor: Colors.white,
              //     fontSize: 16.0
              // );
            }
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
