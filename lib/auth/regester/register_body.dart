import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_savior/auth/regester/register_fields.dart';

import '../widgets/auth_btn.dart';
import '../widgets/widgets.dart';
import 'check_terms.dart';


class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Spacer(),
          const HeaderTitle(title: 'Sign Up'),
          const SizedBox(height: 8),
           RegisterFields(),
          //const CheckTerms(),
          //const SizedBox(height: 22),
          //AuthBtn(onPressed: () {}, width: 130, title: 'Create Account'),
          GoSignUp(
            onPressed: () => Get.back(),
            title1: 'Already have an account ? ',
            title2: 'Sign In',
          ),
        ],
      ),
    );
  }
}
