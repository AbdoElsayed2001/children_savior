import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:kids_savior/auth/forgot_pass/forget_cubit.dart';
import 'package:kids_savior/auth/forgot_pass/reset_pass/reset_pass.dart';

import '../../network/cache_helper.dart';
import '../../utils.dart';
import '../widgets/auth_btn.dart';
import '../widgets/auth_field.dart';
import '../widgets/widgets.dart';
import 'forgrt_states.dart';

class ForgotBody extends StatelessWidget {

  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context) => ForgetCubit(),
      child : BlocConsumer< ForgetCubit,ForgetStates>(
        listener:  (context,state){
          if (state is ForgetSuccessState )
          {
            if (state.forgetModel.status == 1 )
            {
              // print(state.loginModel.message);
              // print(state.loginModel.data.access_token);
              // print(state.loginModel.data.name);

              Fluttertoast.showToast(
                  msg: state.forgetModel.message,
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  fontSize: 16.0
              );

              CacheHelper.saveData(
                  key: 'Bearer access_token',
                  value: state.forgetModel.data.email).then((value)
              {
                Get.to(() => const ResetScreen());
              }
              );
            }
          }
          else if(state is ForgetErrorState)
          {
            Fluttertoast.showToast(
                msg: ForgetCubit.get(context).forgetModel.message,
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }

        },
        builder: (context,state) {
          return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Spacer(),
                const HeaderTitle(title: 'Forgot Password ?'),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Enter your email',
                    style: appStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                AuthField(
                  isPassowrd: false,
                  controller: emailController,
                  validation: (String? value ){
                    if (value!.isEmpty){
                      return 'email is not correct';
                    }

                  },
                  label: 'email',
                  type: TextInputType.emailAddress,
                ),
                const SizedBox(height: 50),
                ConditionalBuilder(
                  condition: state is! ForgetLoadingState,
                  builder: (context) => AuthBtn(
                    title: 'Continue',
                    onPressed: (){
                      if (formKey.currentState!.validate())
                      {
                        ForgetCubit.get(context).forgetPassword(
                          email: emailController.text,
                        );

                      }
                      else {
                        print("error");
                      }
                    },
                  ),
                  fallback: (context)=> Center(child: CircularProgressIndicator()),
                ),
                // AuthBtn(
                //   onPressed: () => Get.to(() => const ResetScreen()),
                //   title: 'Continue',
                // ),
                const SizedBox(height: 120),
              ],
            ),
          ),
        );
        }
      ),
    );
  }
}
