import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_savior/auth/forgot_pass/reset_pass/reset_pass.dart';

import '../../utils.dart';
import '../widgets/auth_btn.dart';
import '../widgets/auth_field.dart';
import '../widgets/widgets.dart';

class ForgotBody extends StatelessWidget {
  const ForgotBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
          AuthField(hintText: 'Email', border: border),
          const SizedBox(height: 50),
          AuthBtn(
            onPressed: () => Get.to(() => const ResetScreen()),
            title: 'Continue',
          ),
          const SizedBox(height: 120),
        ],
      ),
    );
  }
}
