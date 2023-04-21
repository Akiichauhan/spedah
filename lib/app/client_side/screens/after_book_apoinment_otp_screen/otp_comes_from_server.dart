import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const/colors.dart';
import '../../../widgets/custom_btn.dart';
import '../../../widgets/mystring.dart';
import '../user_dashbourd/user_dashbourd.dart';

class OTPScreenComes extends StatefulWidget {
  const OTPScreenComes({super.key});

  @override
  State<OTPScreenComes> createState() => _OTPScreenComesState();
}

class _OTPScreenComesState extends State<OTPScreenComes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 84, 0, 0),
            child: MyString(
              myText: "Your Appointment is confirmed",
              style: GoogleFonts.roboto(
                fontSize: 36.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Image.asset("images/otp_screen.png"),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: UIButton(
              borderRadius: BorderRadius.circular(40.0),
              onTap: () {
                Get.to(
                  const UserDashbourd(),
                );
              },
              color: const Color(0xff95D0A9),
              labelText: "Home",
              height: 51,
              width: 187,
              style: GoogleFonts.jost(
                fontSize: 30.0,
                color: AppColors.splashWhiteColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
