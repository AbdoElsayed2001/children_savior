import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_savior/auth/login/login_body.dart';
import 'package:kids_savior/network/cache_helper.dart';

import '../app_images.dart';
import 'login/login.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(milliseconds: 3000),
      () => Get.offAll(LoginScreen()),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        AppImages.splash,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
