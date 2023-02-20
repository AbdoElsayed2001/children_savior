import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../bottomNavBar/bottom_nav_screen.dart';
import '../forgot_pass/forgot_pass.dart';
import '../regester/register.dart';
import '../widgets/auth_btn.dart';
import '../widgets/auth_field.dart';
import '../widgets/widgets.dart';


class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Spacer(),
          const HeaderTitle(title: 'Sign In'),
          const SizedBox(height: 16),
          AuthField(hintText: 'Email', border: border),
          const SizedBox(height: 32),
          AuthField(hintText: 'Password', border: border),
          const SizedBox(height: 8),
          ForgotPass(
            onPressed: () => Get.to(const ForgotScreen()),
          ),
          const SizedBox(height: 8),
          AuthBtn(
            title: 'Sign In',
            onPressed: () => Get.offAll( BottomNavScreen()),
          ),
          const SizedBox(height: 16),
          GoSignUp(
            onPressed: () => Get.to(const RegisterScreen()),
          ),
          const SizedBox(height: 36),
        ],
      ),
    );
  }
}
