import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah/app/client_side/screens/user_dashbourd/user_dashbourd.dart';
import 'package:spedah/app/const/colors.dart';

import '../../../widgets/mystring.dart';
import '../doctor_select/doctor_select.dart';
import '../search_doctor/search_doctor.dart';

class PopularDoctor extends StatefulWidget {
  const PopularDoctor({super.key});

  @override
  State<PopularDoctor> createState() => _PopularDoctorState();
}

class _PopularDoctorState extends State<PopularDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.to(
              const UserDashbourd(),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.forgotTextformfieldTextColor,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Icon(
              Icons.search,
              color: AppColors.forgotTextformfieldTextColor,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                MyString(
                  myText: "Polular Doctor",
                  style: GoogleFonts.jost(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      const SearchDoctor(),
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
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: AppColors.whiteColor,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            height: 230,
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Get.to(
                    const SearchDoctor(),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: AppColors.whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.29),
                          blurRadius: 5.0,
                          spreadRadius: 2.0,
                          offset: const Offset(3.0, 3.0),
                        ),
                      ]),
                  width: 136,
                  height: 200,
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                              "images/doctor_select_one.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 136,
                        width: 131,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          MyString(
                            myText: "Cardiologist",
                            style: GoogleFonts.rubik(
                              color: AppColors.blackColor,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          MyString(
                            myText: "Cardiologist",
                            style: GoogleFonts.rubik(
                              color: AppColors.popularDoctorTextColor,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 10,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 10,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 10,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 10,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 10,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                MyString(
                  myText: "Category",
                  style: GoogleFonts.rubik(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SizedBox(
              height: 1000,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(
                        const DoctorSelect(),
                      );
                    },
                    child: Container(
                      height: 105,
                      width: 335,
                      decoration: BoxDecoration(
                        //
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.29),
                            blurRadius: 5.0,
                            spreadRadius: 2.0,
                            offset: const Offset(3.0, 3.0),
                          ),
                        ],
                        color: AppColors.splashWhiteColor,

                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: ListTile(
                        leading: SizedBox(
                          height: 60.0,
                          width: 60.0,
                          child:
                              Image.asset("images/popular_doctor_splash.png"),
                        ),
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: MyString(
                                myText: "Dr.Jenny Roy",
                                style: GoogleFonts.rubik(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.blackColor,
                                    fontSize: 15),
                              ),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            MyString(
                              myText: "Heart Surgeon",
                              style: GoogleFonts.rubik(
                                color: AppColors.loginTitleColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                              ],
                            ),
                          ],
                        ),
                        trailing: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 60),
                              child: Icon(
                                Icons.favorite_outline,
                                size: 16.28,
                                color: Colors.red,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            //
                            RichText(
                              text: TextSpan(
                                text: '2.4',
                                style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '(2475 views)',
                                    style: GoogleFonts.rubik(
                                        color: Colors.grey, fontSize: 12.0),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //
          )
        ],
      ),
    );
  }
}
