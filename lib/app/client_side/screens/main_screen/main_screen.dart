import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:spedah/app/const/colors.dart';
import 'package:spedah/app/widgets/custom_btn.dart';
import 'package:spedah/app/widgets/mystring.dart';

import '../../auth/sign_in.dart';
import '../../auth/sign_up.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          color: AppColors.splashBGColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _title(),
              _containerCircular(context),
              _mainTitle(),
              _subTitle(),
              const SizedBox(
                height: 6.0,
              ),
              _miniTitle(),
              const SizedBox(
                height: 10.0,
              ),
              _myLogin(context),
              const SizedBox(
                height: 14.0,
              ),
              _mySignIn(context),
              const SizedBox(
                height: 26.0,
              ),
              _myDivider(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return Container(
      margin: const EdgeInsets.fromLTRB(4, 24, 0, 0),
      child: Row(
        children: [
          MyString(
            myText: "Spedah",
            style: GoogleFonts.sora(
                fontWeight: FontWeight.w600,
                fontSize: 24.0,
                color: AppColors.splashtitleColor),
          ),
          const SizedBox(
            width: 6.0,
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: AppColors.splashLoginDashColor,
            ),
            height: 10,
            width: 10,
          ),
        ],
      ),
    );
  }

  Widget _containerCircular(BuildContext context) {
    return Stack(children: [
      Container(
        margin: const EdgeInsets.only(left: 60.0, top: 30),
        decoration: BoxDecoration(
          color: AppColors.splashCircularColor,
          borderRadius: BorderRadius.circular(160.0),
        ),
        height: MediaQuery.of(context).size.height * 0.350,
        width: MediaQuery.of(context).size.width * 0.8,
        //   child:
      ),
      Container(
        alignment: Alignment.topRight,
        child: Image.asset(
          "images/splash_doctor.png",
          height: 320.0,
        ),
      ),
    ]);
  }

  Widget _mainTitle() {
    return MyString(
      myText: "Let's ",
      style: GoogleFonts.jost(
        color: AppColors.splashWhiteColor,
        fontSize: 48.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _subTitle() {
    return MyString(
      myText: "Get Started",
      style: GoogleFonts.jost(
        color: AppColors.splashWhiteColor,
        fontSize: 48.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _miniTitle() {
    return MyString(
      myText: "Everything start from here",
      style: GoogleFonts.jost(
        color: AppColors.splashWhiteColor,
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _myLogin(BuildContext context) {
    return Center(
      child: UIButton(
        borderRadius: BorderRadius.circular(100.0),
        onTap: () {
          Get.to(
            const SignIn(),
          );
        },
        color: AppColors.forgotPasswordBtnColor,
        labelText: "Login",
        height: 57,
        width: 319,
        style: GoogleFonts.jost(
          fontSize: 26.0,
          color: AppColors.splashWhiteColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _mySignIn(BuildContext context) {
    return Center(
      child: UIButton(
        borderRadius: BorderRadius.circular(100.0),
        onTap: () {
          Get.to(
            const SignUp(),
          );
        },
        color: AppColors.splashWhiteColor,
        labelText: "Sign up",
        height: 57,
        width: 319,
        style: GoogleFonts.jost(
          fontSize: 26.0,
          color: AppColors.forgotPasswordBtnColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _myDivider() {
    return Container(
      height: 5,
      alignment: Alignment.center,
      child: const Divider(
        height: 5,
        indent: 70.0,
        endIndent: 100.0,
        thickness: 4,
        color: AppColors.splashLoginColor,
      ),
    );
  }
}
