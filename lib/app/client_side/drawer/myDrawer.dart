// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah/app/client_side/screens/PrivacyPolicy/PrivacyPolicy.dart';
import 'package:spedah/app/client_side/screens/doctor_select/doctor_select.dart';
import 'package:spedah/app/client_side/screens/user_dashbourd/user_dashbourd.dart';
import 'package:spedah/app/client_side/screens/settings/settings.dart';
import 'package:spedah/app/client_side/screens/user_notification/user_notification.dart';

import '../../const/colors.dart';
import '../../widgets/mystring.dart';
import '../screens/chat/chat.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  // late int index;
  final List<IconData> myIconTab = [
    Icons.message,
    Icons.video_call,
    Icons.chat,
    Icons.privacy_tip,
    Icons.settings,
  ];

  List myText = [
    "Categories",
    "Video Call",
    "Message",
    "Privacy policy",
    "Setting",
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
      ),
      backgroundColor: AppColors.drawerbgcolor,
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 40, 0, 1),
        child: Column(
          children: [
            ListTile(
              leading: const SizedBox(
                height: 60,
                width: 60,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "images/drawer_icon.png",
                  ),
                ),
              ),
              title: MyString(
                myText: "Kim John",
                style: GoogleFonts.jost(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                  color: AppColors.whiteColor,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  Get.to(
                    const UserDashbourd(),
                  );
                },
                icon: const Icon(
                  Icons.close,
                  color: AppColors.whiteColor,
                ),
              ),
              subtitle: MyString(
                myText: "Akash Chauhan",
                style: GoogleFonts.jost(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Get.to(const DoctorSelect());
              },
              child: _myCategory(
                "Catagories",
                Icons.chat,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Get.to(const ChatScreen());
              },
              child: _myCategory(
                "Video Call",
                Icons.video_call,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Get.to(
                  const UserNotification(),
                );
              },
              child: _myCategory(
                "Message",
                Icons.chat,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Get.to(const PrivacyPolicy());
              },
              child: _myCategory(
                "Privacy",
                Icons.settings,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Get.to(
                  const Settings(),
                );
              },
              child: _myCategory(
                "Setting",
                Icons.settings,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _myCategory(
    String myText,
    IconData icons,
  ) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            width: 342,
            height: 46,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Row(
                children: [
                  Container(
                    width: 45,
                    height: 49,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.whiteColor,
                    ),
                    child: Icon(
                      icons,
                      //  myIconTab,
                      color: AppColors.splashBGColor,
                      size: 28,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  MyString(
                    // myText: myText[index],
                    myText: myText,
                    style: GoogleFonts.jost(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: AppColors.whiteColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
