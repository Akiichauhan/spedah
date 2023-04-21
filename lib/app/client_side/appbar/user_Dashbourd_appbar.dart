// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const/colors.dart';
import '../../widgets/mystring.dart';

// ignore: must_be_immutable
class UserDashbourdAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  UserDashbourdAppbar({super.key, this.bottom});

  @override
  Size get preferredSize => const Size.fromHeight(70.0);
  PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      bottom: bottom,
      backgroundColor: AppColors.whiteColor,
      iconTheme: const IconThemeData(
        color: AppColors.blackColor,
      ),
      title: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            MyString(
              myText: "Current Location",
              style: GoogleFonts.jost(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 13),
            ),
            MyString(
              myText: "India",
              style: GoogleFonts.jost(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: IconButton(
            icon: const Icon(
              Icons.location_on_sharp,
              color: AppColors.blackColor,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
