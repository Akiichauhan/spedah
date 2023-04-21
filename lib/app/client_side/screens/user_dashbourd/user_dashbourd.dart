import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah/app/client_side/appbar/user_Dashbourd_appbar.dart';
import 'package:spedah/app/client_side/drawer/myDrawer.dart';
import 'package:spedah/app/client_side/screens/doctor_select/doctor_select.dart';
import 'package:spedah/app/client_side/screens/popular_doctor/popular_doctor.dart';
import 'package:spedah/app/client_side/screens/single_doctor_full_detail/single_doctor_full_detail.dart';

import 'package:spedah/app/const/colors.dart';
import 'package:spedah/app/widgets/mystring.dart';

class UserDashbourd extends StatefulWidget {
  const UserDashbourd({super.key});

  @override
  State<UserDashbourd> createState() => _UserDashbourdState();
}

class _UserDashbourdState extends State<UserDashbourd> {
  double fixPadding = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.splashWhiteColor,
        appBar: UserDashbourdAppbar(),
        drawer: const MyDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                textDesign(
                  'Find your desired',
                  GoogleFonts.jost(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 6,
                ),
                textDesign(
                  'Doctor Right Now!',
                  GoogleFonts.jost(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                search(),
                const SizedBox(
                  height: 15,
                ),
                mainDesignBody(),
              ],
            ),
          ),
        ));

    //

    ///
  }

  Widget textDesign(String name, TextStyle textStyle) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            name,
            style: textStyle,
          ),
        ),
      ],
    );
  }

  Widget mainDesignBody() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: AppColors.dashbourdContainerBgColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(70),
            topRight: Radius.circular(70),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0)),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          buildPadding(),
          const SizedBox(
            height: 20,
          ),
          buildImageList(),
          const SizedBox(
            height: 20,
          ),
          buildPaddingText(),
          const SizedBox(
            height: 15,
          ),
          buildList(),
        ],
      ),
    );
  }

  buildList() {
    return Expanded(
      child: SizedBox(
        //height: 1000,
        child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: GestureDetector(
              onTap: () {
                Get.to(
                  const PopularDoctor(),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: AppColors.splashWhiteColor,
                ),
                child: ListTile(
                  leading: const SizedBox(
                    height: 60.0,
                    width: 60.0,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/row_build.png',
                      ),
                    ),
                  ),
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyString(
                        myText: "Dr.Jenny Roy",
                        style: GoogleFonts.jost(
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackColor,
                            fontSize: 19),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      MyString(
                        myText: "Heart Surgeon",
                        style: GoogleFonts.jost(
                          color: AppColors.loginTitleColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                    ],
                  ),
                  subtitle: MyString(
                    myText: "\$300",
                    style: GoogleFonts.jost(
                      fontWeight: FontWeight.w700,
                      color: AppColors.dashbourdContainerMoneycolor,
                      fontSize: 16,
                    ),
                  ),
                  trailing: Column(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 16.28,
                        color: Colors.yellow,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 75,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.0),
                          color: AppColors.dashbourdContainerBtnColor,
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Get.to(
                                const SingleDoctorFullDetail(),
                              );
                            },
                            child: Text(
                              "Book",
                              style: GoogleFonts.jost(
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding buildPaddingText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          MyString(
            myText: "Top Doctors",
            style: GoogleFonts.jost(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Get.to(
                const PopularDoctor(),
              );
            },
            child: MyString(
              myText: "See All",
              style: GoogleFonts.jost(
                  color: Colors.green.shade900,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPadding() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          MyString(
            myText: "Catagories",
            style: GoogleFonts.jost(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Get.to(
                const DoctorSelect(),
              );
            },
            child: MyString(
              myText: "See All",
              style: GoogleFonts.jost(
                  color: Colors.green.shade900,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox buildImageList() {
    return SizedBox(
      width: double.infinity,
      height: 130,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Get.to(
              const DoctorSelect(),
            );
          },
          child: Container(
            margin: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            width: 103,
            height: 80,
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  height: 80,
                  width: 103,
                  child: ClipRRect(
                    child: Image.asset('images/cardiologist.png'),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: MyString(
                    myText: "Cardiologist",
                    style: GoogleFonts.jost(
                      color: AppColors.userDashbourdTextColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

//https://www.youtube.com/watch?v=jFHSkfjN96I

  search() {
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 16, 18, 10),
      height: 70,
      child: TextFormField(
        cursorHeight: 30,
        keyboardType: TextInputType.text,
        style: GoogleFonts.sora(
          fontWeight: FontWeight.w400,
          fontSize: 16.0,
          color: AppColors.forgotTextformfieldTextColor,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
          isCollapsed: true,
          labelText: "Search Here",
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.loginTitleColor,
          ),
          labelStyle: GoogleFonts.sora(
            fontWeight: FontWeight.w400,
            color: AppColors.loginTitleColor,
            fontSize: 16.0,
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.changePasswordIconBGColor,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
