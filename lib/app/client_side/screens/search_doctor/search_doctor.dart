import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah/app/client_side/screens/user_dashbourd/user_dashbourd.dart';
import 'package:spedah/app/const/colors.dart';
import 'package:spedah/app/widgets/mystring.dart';

import '../single_doctor_full_detail/single_doctor_full_detail.dart';

class SearchDoctor extends StatefulWidget {
  const SearchDoctor({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchDoctorState createState() => _SearchDoctorState();
}

class _SearchDoctorState extends State<SearchDoctor> {
  List myDate = ["5", "4", "4.5", "5.4", "4.5", "5"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.to(
                const UserDashbourd(),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff1F5460),
            )),
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        title: MyString(
          myText: 'Doctor Search',
          style: GoogleFonts.jost(
            color: AppColors.blackColor,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        child: myActive(),
      ),
    );
  }

  Widget myActive() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(6, 8, 6, 6),
      child: Column(
        children: [
          mySearch(),
          myActivePage(),
        ],
      ),
    );
  }

  Widget mySearch() {
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 16, 18, 10),
      height: 70,
      child:
          //
          TextFormField(
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

  Widget myActivePage() {
    return Expanded(
      child: SizedBox(
        child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: GestureDetector(
              onTap: () {
                Get.to(
                  const SingleDoctorFullDetail(),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.29),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                      offset: const Offset(3.0, 3.0),
                    ),
                  ],
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
                      SizedBox(
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.star,
                              size: 16.28,
                              color: Colors.yellow,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            MyString(
                              myText: myDate[index],
                              style: GoogleFonts.jost(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
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
                        )),
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
}
