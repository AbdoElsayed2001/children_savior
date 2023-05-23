import 'package:flutter/material.dart';

import '../widgets/auth_field.dart';


class RegisterFields extends StatelessWidget {
  const RegisterFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    var addressController = TextEditingController();


    return Column(
      children: [
        AuthField( controller: emailController,
          validation: (String? value ){
            if (value!.isEmpty){
              return 'email is not correct';
            }
          },
          label: 'Password',
          type: TextInputType.visiblePassword,
        ),
        const SizedBox(height: 8),
        AuthField( controller: emailController,
          validation: (String? value ){
            if (value!.isEmpty){
              return 'email is not correct';
            }
          },
          label: 'Password',
          type: TextInputType.visiblePassword,
        ),
        const SizedBox(height: 8),
        AuthField( controller: emailController,
          validation: (String? value ){
            if (value!.isEmpty){
              return 'email is not correct';
            }
          },
          label: 'Password',
          type: TextInputType.visiblePassword,
        ),
        const SizedBox(height: 8),
        AuthField( controller: emailController,
          validation: (String? value ){
            if (value!.isEmpty){
              return 'email is not correct';
            }
          },
          label: 'Password',
          type: TextInputType.visiblePassword,
        ),
        const SizedBox(height: 8),
        AuthField(controller: emailController,
          validation: (String? value ){
            if (value!.isEmpty){
              return 'email is not correct';
            }
          },
          label: 'Password',
          type: TextInputType.visiblePassword,
        ),
      ],
    );
  }
}
