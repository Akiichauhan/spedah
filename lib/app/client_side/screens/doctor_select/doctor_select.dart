import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah/app/client_side/screens/single_doctor_full_detail/single_doctor_full_detail.dart';
import 'package:spedah/app/client_side/screens/user_dashbourd/user_dashbourd.dart';
import 'package:spedah/app/widgets/mystring.dart';
import '../../../const/colors.dart';
// ignore: depend_on_referenced_packages
import 'package:readmore/readmore.dart';

import '../../../widgets/custom_btn.dart';

class DoctorSelect extends StatefulWidget {
  const DoctorSelect({super.key});

  @override
  State<DoctorSelect> createState() => _DoctorSelectState();
}

class _DoctorSelectState extends State<DoctorSelect> {
  String myReadText =
      "Physical Medicine and Rehabilitation. He has achieved several awards and recoginition for is contributuon and service in his own field. He is available for private consulation";

//
  List<String> myImages = [
    'images/doctor_select_one.png',
    'images/popular_doctor_splash.png',
    'images/doctor_select_one.png',
    'images/popular_doctor_splash.png',
    'images/doctor_select_one.png',
    'images/popular_doctor_splash.png',
  ];

//
  final List<IconData> mySecondicons = [
    Icons.star,
    Icons.star,
    Icons.star,
    Icons.message,
    Icons.star,
    Icons.star,
  ];

  int index = 0;

//

  List<String> myDoctorName = [
    "Dr. Ravi Mahaskar",
    "Dr. Yashvi Gajera",
    "Dr. Ravi Mahaskar",
    "Dr. Yashvi Gajera",
    "Dr. Ravi Mahaskar",
    "Dr. Yashvi Gajera",
  ];
//
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
          myText: "Doctor Appoinment",
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                        child: Image.asset(
                          myImages[index],
                          height: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                      MyString(
                        myText: myDoctorName[index],
                        style: GoogleFonts.jost(
                          fontSize: 13,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.doctorSelectcontainerBGCOlor,
                    borderRadius: BorderRadius.circular(10.0)),
                height: 194,
                width: 343,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    MyString(
                      myText: "Dr. Ravi Mahaskar",
                      style: GoogleFonts.jost(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    MyString(
                      myText: "MD, Nephrology - 3.2 KM Awal ",
                      style: GoogleFonts.jost(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),
                    ),
                    MyString(
                      myText: "Monday-Friday, 10:00am to 06:00pm ",
                      style: GoogleFonts.jost(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          mySecondicons[index],
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                    const Divider(
                      color: Color(0xffCDC5C5),
                      thickness: 2,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              MyString(
                                myText: "Patient",
                                style: GoogleFonts.jost(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11.0,
                                ),
                              ),
                              MyString(
                                myText: "1000+",
                                style: GoogleFonts.jost(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                          const VerticalDivider(
                            color: Color(0xffCDC5C5),
                            thickness: 2,
                            width: 80,
                          ),
                          Column(
                            children: [
                              MyString(
                                myText: "Experience",
                                style: GoogleFonts.jost(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11.0,
                                ),
                              ),
                              MyString(
                                myText: "10 Yrs",
                                style: GoogleFonts.jost(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 10, 0, 0),
              child: MyString(
                myText: "About ",
                style: GoogleFonts.jost(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackColor,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 10, 14, 0),
              child: ReadMoreText(
                myReadText,
                trimLines: 3,
                textAlign: TextAlign.justify,
                trimMode: TrimMode.Line,
                trimCollapsedText: "Show More",
                trimExpandedText: "Show Less",
                moreStyle: GoogleFonts.jost(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff52ABA3),
                ),
                lessStyle: GoogleFonts.jost(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff52ABA3),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: UIButton(
                borderRadius: BorderRadius.circular(40.0),
                onTap: () {
                  Get.to(
                    const SingleDoctorFullDetail(),
                  );
                },
                color: AppColors.forgotPasswordBtnColor,
                labelText: "Book Appoinment",
                height: 55,
                width: 300,
                style: GoogleFonts.jost(
                  fontSize: 26.0,
                  color: AppColors.splashWhiteColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
