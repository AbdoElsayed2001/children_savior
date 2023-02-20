import 'package:flutter/material.dart';

import '../widgets/auth_back.dart';
import 'login_body.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthBack(
      child: LoginBody(),
    );
  }
}
