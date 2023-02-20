import 'package:flutter/material.dart';
import 'package:kids_savior/auth/regester/register_body.dart';

import '../../app_images.dart';
import '../widgets/auth_back.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthBack(
      img: AppImages.loginBack2,
      child: RegisterBody(),
    );
  }
}
