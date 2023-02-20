import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../bottomNavBar/bottom_nav_screen.dart';
import '../../widgets/auth_btn.dart';
import '../../widgets/auth_field.dart';
import '../../widgets/widgets.dart';

class ResetPassBody extends StatelessWidget {
  const ResetPassBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Spacer(),
          const HeaderTitle(title: 'Reset Password ?'),
          const SizedBox(height: 16),
          AuthField(hintText: 'Code', border: border),
          const SizedBox(height: 16),
          AuthField(hintText: 'Password', border: border),
          const SizedBox(height: 16),
          AuthField(hintText: 'Confirm Password', border: border),
          const SizedBox(height: 16),
          const SizedBox(height: 40),
          AuthBtn(
            onPressed: () => Get.offAll(() => BottomNavScreen()),
            title: 'Sign In',
          ),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
