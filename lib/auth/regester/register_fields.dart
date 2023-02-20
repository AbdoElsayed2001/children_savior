import 'package:flutter/material.dart';

import '../widgets/auth_field.dart';


class RegisterFields extends StatelessWidget {
  const RegisterFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthField(hintText: 'Name', border: border),
        const SizedBox(height: 8),
        AuthField(hintText: 'Email', border: border),
        const SizedBox(height: 8),
        AuthField(hintText: 'Phone', border: border),
        const SizedBox(height: 8),
        AuthField(hintText: 'Password', border: border),
        const SizedBox(height: 8),
        AuthField(hintText: 'Address', border: border),
      ],
    );
  }
}
