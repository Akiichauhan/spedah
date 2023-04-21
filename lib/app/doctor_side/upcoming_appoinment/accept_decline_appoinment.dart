import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah/app/doctor_side/doctor_dashbourd/doctor_dashbourd.dart';

import '../../const/colors.dart';
import '../../widgets/mystring.dart';

class AcceptOrDeclineAppoinment extends StatefulWidget {
  const AcceptOrDeclineAppoinment({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AcceptOrDeclineAppoinmentState createState() =>
      _AcceptOrDeclineAppoinmentState();
}

class _AcceptOrDeclineAppoinmentState extends State<AcceptOrDeclineAppoinment> {
  final List<IconData> myWatchicons = [
    Icons.watch_later,
    Icons.lock_clock,
    Icons.lock_clock,
    Icons.lock_clock,
    Icons.lock_clock,
    Icons.lock_clock,
    Icons.lock_clock,
    Icons.lock_clock,
    Icons.lock_clock,
    Icons.lock_clock,
  ];

  final List<IconData> myCommunicationicons = [
    Icons.phone,
    Icons.video_call,
    Icons.phone,
    Icons.video_call,
    Icons.phone,
    Icons.video_call,
    Icons.phone,
    Icons.video_call,
    Icons.phone,
    Icons.message,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.to(
                const DoctorDashbourd(),
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
          myText: 'Upcomming Appoinment',
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
          myActivePage(),
        ],
      ),
    );
  }

  //
  Widget myActivePage() {
    return Expanded(
      child: SizedBox(
        //  height: 1000,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: 342,
              height: 160,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.29),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                    offset: const Offset(3.0, 3.0),
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
                                    //  myText: myCallingText[index],
                                    myText: "Voice Call - Consultation",
                                    style: GoogleFonts.jost(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.0,
                                      color: const Color(0xff797979),
                                    ),
                                  ),
                                  //
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE6EFF9),
                                      borderRadius: BorderRadius.circular(60.0),
                                    ),
                                    child: Icon(
                                      myCommunicationicons[index],
                                      color: const Color(0xff52ABA3),
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.watch_later,
                                    color: Color(0xff52ABA3),
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
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Row(
                        children: [
                          Container(
                            width: 110,
                            height: 33,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  color: AppColors.whiteColor,
                                )),
                            child: Center(
                              child: MyString(
                                myText: "Cancle",
                                style: GoogleFonts.jost(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                            width: 110,
                            height: 33,
                            decoration: BoxDecoration(
                                color: const Color(0xff52ABA3),
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(color: Colors.white)),
                            child: Center(
                              child: MyString(
                                myText: "Accept",
                                style: GoogleFonts.jost(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
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
    );
  }
}
