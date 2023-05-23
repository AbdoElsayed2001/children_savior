// import 'dart:ffi';
//
// import 'package:flutter/material.dart';
//
// class AuthField extends StatelessWidget {
//   final UnderlineInputBorder border;
//   final String hintText;
//   final TextEditingController controller;
//   final String? Function(String?) validation;
//   final bool isPassword;
//
//   const AuthField({super.key, required this.border, required this.hintText,required this.controller,required this.validation,required this.isPassword});
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//
//       style: const TextStyle(fontSize: 14),
//       decoration: InputDecoration(
//         hintText: hintText,
//         border: border,
//         disabledBorder: border,
//         enabledBorder: border,
//       ),
//       controller: controller,
//       validator: validation,
//
//     );
//
//   }
// }
//
// UnderlineInputBorder get border => UnderlineInputBorder(
//   borderRadius: BorderRadius.circular(10),
//   borderSide: const BorderSide(color: Colors.black, width: 1),
// );

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget AuthField({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  final String? Function(String?)? onSubmit,
  final String? Function(String?)? onChange,
  required final String? Function(String?) validation,
})=>TextFormField(
controller: controller,
  keyboardType: type,
  onFieldSubmitted: onSubmit,
  onChanged: onChange,
  validator: validation,
  decoration: InputDecoration(
    labelText: label,
    border: OutlineInputBorder(),
  ),
);






