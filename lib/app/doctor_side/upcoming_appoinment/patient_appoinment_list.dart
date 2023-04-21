import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah/app/client_side/screens/settings/settings.dart';

import '../../const/colors.dart';
import '../../widgets/mystring.dart';

class PatientAppoinmentList extends StatefulWidget {
  const PatientAppoinmentList({super.key});

  @override
  State<PatientAppoinmentList> createState() => _PatientAppoinmentListState();
}

class _PatientAppoinmentListState extends State<PatientAppoinmentList> {
  int index = 0;

  // //progress color
  bool isDarkMode = true;
  bool isHighContrast = false;

  List myDate = [
    "3",
    "4",
    "5",
    "6",
    "7",
    "2",
    "5",
    "1",
    "7",
    "4",
  ];
  List myDay = [
    "Fri",
    "Sun",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
  ];

  List myTime = [
    "09:00 AM",
    "10:00 AM",
    "11:00 AM",
    "12:00 AM",
    "1:00 AM",
    "2:00 AM",
    //
    "3:00 AM",
    "4:00 AM",
    "5:00 AM",
    "6:00 AM",
  ];

  List myAppoinmentStartTime = [
    "10:00am - 11:00am",
    "10:00am -11:00am",
    "10:00am -11:00am",
    "10:00am -11:00am",
    "10:00am -11:00am",
    "11:00am -11:00am",
    "12:00am -11:00am",
    "1:00am -11:00am",
    "2:00am -11:00am",
    "3:00am -11:00am",
  ];

  List myAppoinmentTask = [
    "Complate",
    "Complate",
    "In Progress",
    " Upcomming",
    "Complate",
    "Cancled",
    //
    "In Progress",
    " Upcomming",
    "Complate",
    "Cancled",
  ];

  List myUserName = [
    "Jayesh this is ",
    "Akash",
    "Ankit",
    "Prakash",
    "Vikas",
    "Om",
    "Jay",
    "Veeru",
    "Kamal",
    "Hasan",
  ];

  final List<IconData> myIcon = [
    Icons.video_call,
    Icons.message,
    Icons.video_call,
    Icons.voice_chat,
    Icons.person,
    Icons.flight,
    //
    Icons.wallet,
    Icons.gif,
    Icons.one_x_mobiledata,
    Icons.padding,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        toolbarHeight: 110,
        elevation: 0,
        title: MyString(
          myText: 'Appointment',
          style: GoogleFonts.jost(
            color: AppColors.blackColor,
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(
                const Settings(),
              );
            },
            icon: const Icon(
              Icons.settings,
            ),
          )
        ],
      ),
      body: Scaffold(
          backgroundColor: AppColors.whiteColor,
          body: Container(
            child: myAllPages(),
          )),
    );
  }

  Widget myAllPages() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        8,
        8,
        8,
        0,
      ),
      child: Column(
        children: [
          appoinmentData(),
          const SizedBox(
            height: 20,
          ),
          patinetAppoinmentTime(),
        ],
      ),
    );
  }

  Widget appoinmentData() {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
          child: Container(
            height: 57,
            width: 44,
            decoration: BoxDecoration(
              color: const Color(0xffE6EFF9),
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyString(
                  myText: myDay[index].toString(),
                  style: GoogleFonts.jost(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                      color: const Color(0xff777777)),
                ),
                const SizedBox(
                  height: 6,
                ),
                MyString(
                  myText: myDate[index].toString(),
                  style: GoogleFonts.jost(
                      fontWeight: FontWeight.w600,
                      fontSize: 25.0,
                      color: AppColors.blackColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget patinetAppoinmentTime() {
    return Expanded(
      child: SizedBox(
        width: 346,
        height: 148,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  MyString(
                    myText: myTime[index],
                    style: GoogleFonts.jost(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff888888)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 236,
                    color: const Color(0xff888888),
                    child: const Divider(
                      height: 2,
                      thickness: 2,
                      color: Color(0xff888888),
                      indent: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffE6EFF9),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                            offset: const Offset(0, 0),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      width: 292,
                      height: 110,
                      child: Column(
                        children: [
                          SizedBox(
                            child: SizedBox(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'images/row_build.png',
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          MyString(
                                            myText: myUserName[index],
                                            style: GoogleFonts.jost(
                                                fontWeight: FontWeight.w600,
                                                color: AppColors.blackColor,
                                                fontSize: 18),
                                          ),
                                          const SizedBox(
                                            height: 4.0,
                                          ),
                                          MyString(
                                            myText:
                                                myAppoinmentStartTime[index],
                                            style: GoogleFonts.jost(
                                              color: AppColors.loginTitleColor,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4.0,
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: AppColors
                                                  .dashbourdContainerBtnColor,
                                            ),
                                            height: 30,
                                            width: 30,
                                            child: Icon(
                                              myIcon[index],
                                              color: AppColors.whiteColor,
                                              size: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                      //
                                      Container(
                                        alignment: Alignment.center,
                                        height: 21,
                                        width: 89,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: const Color(0xffD9F4CD),
                                        ),
                                        child: MyString(
                                          style: GoogleFonts.jost(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            //      color: const Color(0xff12BA67)),
                                            color: isDarkMode
                                                ? Colors.red
                                                : isHighContrast
                                                    ? const Color(0xff12BA67)
                                                    : Colors.yellow,
                                          ),
                                          myText: myAppoinmentTask[index],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
