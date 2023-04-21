// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah/app/const/colors.dart';

import '../../../widgets/mystring.dart';
import '../user_dashbourd/user_dashbourd.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        title: MyString(
          myText: "Privacy & Policy ",
          style: GoogleFonts.jost(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: AppColors.blackColor,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.to(
              const UserDashbourd(),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.blackColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                color: Color(0xff52ABA3),
                shape: BoxShape.circle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
