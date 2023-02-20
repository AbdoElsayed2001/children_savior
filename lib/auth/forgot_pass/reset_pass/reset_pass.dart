import 'package:flutter/material.dart';
import 'package:kids_savior/auth/forgot_pass/reset_pass/reset_pass_body.dart';

import '../../widgets/auth_back.dart';

class ResetScreen extends StatelessWidget {
  const ResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthBack(
      child: ResetPassBody(),
    );
  }
}
