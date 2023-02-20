import 'package:flutter/material.dart';

import '../../utils.dart';


class GoSignUp extends StatelessWidget {
  final Function() onPressed;
  final String? title1, title2;
  const GoSignUp(
      {super.key, required this.onPressed, this.title1, this.title2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title1 ?? 'If you do not have an account ? ',
          style: appStyle(
            fontFamily: 'Inter',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            title2 ?? 'Sign Up',
            style: appStyle(
              fontFamily: 'Inter',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}

class AuthBtn extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final double? width, height;

  const AuthBtn(
      {super.key,
      required this.title,
      required this.onPressed,
      this.width,
      this.height});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        //backgroundColor: Colors.blue,
        minimumSize: Size(width ?? 130, height ?? 45),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: appStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class ForgotPass extends StatelessWidget {
  final Function() onPressed;
  const ForgotPass({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          'Forgot password ?',
          style: appStyle(
            fontFamily: 'Inter',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
