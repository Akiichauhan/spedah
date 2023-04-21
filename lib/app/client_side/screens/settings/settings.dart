import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah/app/const/colors.dart';

import '../../../widgets/mystring.dart';
import '../user_dashbourd/user_dashbourd.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Scaffold(
          backgroundColor: AppColors.whiteColor,
          appBar: AppBar(
            toolbarHeight: 80.0,
            backgroundColor: AppColors.whiteColor,
            elevation: 0,
            centerTitle: true,
            title: MyString(
              myText: "Settings",
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
        ));
  }
}
