import 'package:flutter/material.dart';

import '../../app_images.dart';


class AuthBack extends StatelessWidget {
  final Widget child;
  final String? img;

  const AuthBack({super.key, required this.child, this.img});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [Image.asset(AppImages.login, fit: BoxFit.contain)],
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  img ?? AppImages.loginBack,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                child,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
