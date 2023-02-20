import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final UnderlineInputBorder border;
  final String hintText;

  const AuthField({super.key, required this.border, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 14),
      decoration: InputDecoration(
        hintText: hintText,
        border: border,
        disabledBorder: border,
        enabledBorder: border,
      ),
    );
  }
}

UnderlineInputBorder get border => UnderlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.black, width: 1),
    );
