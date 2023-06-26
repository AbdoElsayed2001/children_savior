import 'package:flutter/material.dart';
import '../widgets/auth_back.dart';
import 'forgot_pass_body.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  AuthBack(
      child: ForgotBody(),
    );
  }
}
