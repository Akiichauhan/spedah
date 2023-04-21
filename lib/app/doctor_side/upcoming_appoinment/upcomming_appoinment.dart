import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah/app/doctor_side/doctor_dashbourd/doctor_dashbourd.dart';

import '../../const/colors.dart';
import '../../widgets/mystring.dart';

class UpcommingAppoinment extends StatefulWidget {
  const UpcommingAppoinment({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UpcommingAppoinmentState createState() => _UpcommingAppoinmentState();
}

class _UpcommingAppoinmentState extends State<UpcommingAppoinment> {
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
    Icons.video_call,
  ];

  List myDoctorName = [
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
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Container(
              width: 342,
              height: 116,
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
                  //vertical: 10.0,
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
                                myText: myDoctorName[index],
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
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    child: Icon(
                                      myCommunicationicons[index],
                                      color: AppColors.whiteColor,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.watch_later,
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

            //
          ),
        ),
      ),
    );
  }
}
