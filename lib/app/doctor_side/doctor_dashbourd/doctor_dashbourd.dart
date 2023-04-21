import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const/colors.dart';
import '../../widgets/mystring.dart';
import '../upcoming_appoinment/upcomming_appoinment.dart';

class DoctorDashbourd extends StatefulWidget {
  const DoctorDashbourd({super.key});

  @override
  State<DoctorDashbourd> createState() => _DoctorDashbourdState();
}

class _DoctorDashbourdState extends State<DoctorDashbourd> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: const DecorationImage(
                  image: AssetImage("images/doctor_select_one.png"),
                ),
              ),
            ),

            title: Text(
              'Hello',
              style: GoogleFonts.jost(
                  color: AppColors.blackColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              'Dr. Ravi ',
              style: GoogleFonts.jost(
                  color: AppColors.blackColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500),
            ),
            trailing: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: const Color(0xff52ABA3),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Icon(
                  Icons.notification_add,
                  //   myCommunicationicons[index],
                  color: AppColors.whiteColor,
                  size: 20,
                ),
              ),
            ),
            // contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            selected: true,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
            child: Row(
              children: [
                MyString(
                  myText: "Upcomming Appoinment",
                  style: GoogleFonts.jost(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Get.to(
                      const UpcommingAppoinment(),
                    );
                  },
                  child: MyString(
                    myText: "See All",
                    style: GoogleFonts.jost(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff52ABA3),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          InkWell(
            onTap: () {
              Get.to(
                const UpcommingAppoinment(),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: 342,
                height: 116,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.10),
                      spreadRadius: 4,
                      blurRadius: 3,
                      offset: const Offset(1, 8),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    // vertical: 10.0,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        "images/doctor_select_one.png"),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                MyString(
                                  myText: "Dr.Zia Ali",
                                  style: GoogleFonts.jost(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    MyString(
                                      myText: "Voice Call - Consultation",
                                      style: GoogleFonts.jost(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.0,
                                        color: const Color(0xff797979),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff52ABA3),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      child: const Icon(
                                        Icons.phone,
                                        color: AppColors.whiteColor,
                                        size: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.watch_later_outlined,
                                      color: Colors.grey,
                                      size: 20,
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    MyString(
                                      myText: "Voice Call - Consultation",
                                      style: GoogleFonts.jost(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.0,
                                        color: const Color(0xff797979),
                                      ),
                                    ),
                                    //
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // graph
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              color: const Color(0xffECECF0),
              height: 406,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyString(
                      myText: "Appointment Statistic",
                      style: GoogleFonts.jost(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: AppColors.blackColor,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyString(
                              myText: "Total",
                              style: GoogleFonts.jost(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: const Color(0xff777777),
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                MyString(
                                  myText: "550",
                                  style: GoogleFonts.jost(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffDBF3CD),
                                      borderRadius: BorderRadius.circular(06),
                                    ),
                                    width: 49,
                                    height: 21,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "images/graph_increase.png",
                                          color: const Color(0xff5AB267),
                                          height: 16,
                                          width: 18,
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        MyString(
                                            myText: "123",
                                            style: GoogleFonts.jost(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xff5AB267),
                                            ))
                                      ],
                                    )),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyString(
                              myText: "Online",
                              style: GoogleFonts.jost(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: const Color(0xff777777),
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                MyString(
                                  myText: "60",
                                  style: GoogleFonts.jost(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffF5CCCC),
                                      borderRadius: BorderRadius.circular(06),
                                    ),
                                    width: 49,
                                    height: 21,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "images/graph_increase.png",
                                          color: const Color(0xffB70808),
                                          height: 16,
                                          width: 18,
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        MyString(
                                            myText: "123",
                                            style: GoogleFonts.jost(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xffB70808),
                                            ))
                                      ],
                                    )),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyString(
                              myText: "In Person",
                              style: GoogleFonts.jost(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: const Color(0xff777777),
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                MyString(
                                  myText: "51",
                                  style: GoogleFonts.jost(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffF5CCCC),
                                      borderRadius: BorderRadius.circular(06),
                                    ),
                                    width: 49,
                                    height: 21,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "images/graph_increase.png",
                                          color: const Color(0xffB70808),
                                          height: 16,
                                          width: 18,
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        MyString(
                                            myText: "123",
                                            style: GoogleFonts.jost(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xffB70808),
                                            ))
                                      ],
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // const SizedBox(
                    //   height: 60,
                    // ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: const Color(0xff52ABA3),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          MyString(
                            myText: "online Consulation",
                            style: GoogleFonts.jost(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: AppColors.blackColor,
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: const Color(0xff52ABA3),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          MyString(
                            myText: "In person Visit",
                            style: GoogleFonts.jost(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: AppColors.blackColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
