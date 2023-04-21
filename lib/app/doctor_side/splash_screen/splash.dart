import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah/app/const/colors.dart';
import 'package:spedah/app/doctor_side/doctor_bottom_navigation_bar/doctor_bottom_navigation_bar.dart';
import 'package:spedah/app/widgets/mystring.dart';

class DoctorSplashScreen extends StatefulWidget {
  const DoctorSplashScreen({super.key});

  @override
  State<DoctorSplashScreen> createState() => _DoctorSplashScreenState();
}

class _DoctorSplashScreenState extends State<DoctorSplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 3),
    ).then(
      (value) => {
        Get.to(
          const DoctorBottomNavigation(),
        ),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: AppColors.splashBGColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/header_logo.png",
              height: 70,
              width: 79,
            ),
            const SizedBox(
              height: 10,
            ),
            MyString(
              myText: "Doctor State",
              style: GoogleFonts.jost(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w700,
                fontSize: 28.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
