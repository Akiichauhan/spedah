import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spedah/app/client_side/spalsh/splash_screen.dart';
import 'package:spedah/app/const/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: AppColors.whiteColor,
      theme: ThemeData(
        primaryColor: AppColors.blackColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
