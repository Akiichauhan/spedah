import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const/colors.dart';
import '../../../widgets/mystring.dart';

class MyDoctorAppoinment extends StatefulWidget {
  const MyDoctorAppoinment({super.key});

  @override
  State<MyDoctorAppoinment> createState() => _MyDoctorAppoinmentState();
}

class _MyDoctorAppoinmentState extends State<MyDoctorAppoinment>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // firsttab
  List myCallingText = [
    "message",
    "videocall",
    "voicecall",
    "message",
    "videocall",
    "voicecall",
  ];
  final List<IconData> mySecondicons = [
    Icons.message,
    Icons.video_call,
    Icons.voice_chat,
    Icons.message,
    Icons.video_call,
    Icons.voice_chat,
  ];

// second tab
  List myCallingTextSecondTab = [
    "message",
    "videocall",
    "voicecall",
    "message",
    "videocall",
    "voicecall",
  ];

  final List<IconData> mySecondiconSecondTab = [
    Icons.message,
    Icons.video_call,
    Icons.voice_chat,
    Icons.message,
    Icons.video_call,
    Icons.voice_chat,
  ];

// third tab
  List myCallingTextThirdTab = [
    "message",
    "videocall",
    "voicecall",
    "message",
    "videocall",
    "voicecall",
  ];

  final List<IconData> myIconThirdTab = [
    Icons.message,
    Icons.video_call,
    Icons.voice_chat,
    Icons.message,
    Icons.video_call,
    Icons.voice_chat,
  ];

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
        vsync: this,
        length: 3); // Change the length to the number of tabs you need
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        toolbarHeight: 70,
        leading: const Icon(
          Icons.arrow_back,
          color: AppColors.blackColor,
        ),
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        title: MyString(
          myText: 'Notification',
          style: GoogleFonts.jost(
            color: AppColors.blackColor,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        //
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Icon(
              Icons.search,
              color: AppColors.forgotTextformfieldTextColor,
            ),
          ),
        ],

        //
        bottom: TabBar(
          indicatorColor: AppColors.medicalhistorybtnbgcolor,
          controller: _tabController,
          isScrollable: true,
          tabs: [
            Tab(
              icon: MyString(
                myText: "Upcoming",
                style: GoogleFonts.jost(
                  color: AppColors.medicalhistorybtnbgcolor,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ),
            Tab(
              icon: MyString(
                myText: "Completed",
                style: GoogleFonts.jost(
                  color: AppColors.medicalhistorybtnbgcolor,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ),
            Tab(
              icon: MyString(
                myText: "Cancelled",
                style: GoogleFonts.jost(
                  color: AppColors.medicalhistorybtnbgcolor,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          myUpcoming(),
          myComplated(),
          myCancle(),
        ],
      ),
    );
  }

  Widget myUpcoming() {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 1000,
          width: double.infinity,
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                //      padding: const EdgeInsets.only(top: 10),
                width: 342,
                height: 238,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: AppColors.splashWhiteColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
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
                                MyString(
                                  myText: "Dr.Zia Ali",
                                  style: GoogleFonts.jost(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.0,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                                MyString(
                                  myText: myCallingText[index],
                                  style: GoogleFonts.jost(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffE6EFF9),
                                    borderRadius: BorderRadius.circular(60.0),
                                  ),
                                  child: Icon(
                                    // Icons.message,
                                    mySecondicons[index],

                                    color: const Color(0xff52ABA3),
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 70,
                            ),
                            MyString(
                              myText: "March 30 2023",
                              style: GoogleFonts.jost(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const VerticalDivider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            MyString(
                              myText: "06:00 pm",
                              style: GoogleFonts.jost(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        thickness: 2,
                        color: Color(0xffD9D9D9),
                        height: 2,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 150,
                            height: 40,
                            decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(20.0),
                                border:
                                    Border.all(color: const Color(0xff52ABA3))),
                            child: Center(
                              child: MyString(
                                myText: "Cancle",
                                style: GoogleFonts.jost(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff52ABA3)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 150,
                            height: 40,
                            decoration: BoxDecoration(
                                color: const Color(0xff52ABA3),
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(color: Colors.white)),
                            child: Center(
                              child: MyString(
                                myText: "Reschedule",
                                style: GoogleFonts.jost(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    ));

    //
  }

  Widget myComplated() {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 1000,
          width: double.infinity,
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                //      padding: const EdgeInsets.only(top: 10),
                width: 342,
                height: 238,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: AppColors.splashWhiteColor,

                  //

                  //
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
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
                                MyString(
                                  myText: "Dr.Zia Ali",
                                  style: GoogleFonts.jost(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.0,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                                MyString(
                                  //  myText: myCallingText[index],
                                  myText: myCallingTextSecondTab[index],
                                  style: GoogleFonts.jost(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffE6EFF9),
                                    borderRadius: BorderRadius.circular(60.0),
                                  ),
                                  child: Icon(
                                    // Icons.message,
                                    // mySecondicons[index],
                                    mySecondiconSecondTab[index],
                                    color: const Color(0xff52ABA3),
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 70,
                            ),
                            MyString(
                              myText: "March 30 2023",
                              style: GoogleFonts.jost(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const VerticalDivider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            MyString(
                              myText: "06:00 pm",
                              style: GoogleFonts.jost(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        thickness: 2,
                        color: Color(0xffD9D9D9),
                        height: 2,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 150,
                            height: 40,
                            decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(20.0),
                                border:
                                    Border.all(color: const Color(0xff52ABA3))),
                            child: Center(
                              child: MyString(
                                myText: "Book Again",
                                style: GoogleFonts.jost(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff52ABA3)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 150,
                            height: 40,
                            decoration: BoxDecoration(
                                color: const Color(0xff52ABA3),
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(color: Colors.white)),
                            child: Center(
                              child: MyString(
                                myText: "Leave a Review",
                                style: GoogleFonts.jost(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    ));

    //
  }

  Widget myCancle() {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 1000,
          width: double.infinity,
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                //      padding: const EdgeInsets.only(top: 10),
                width: 342,
                height: 186,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    //  vertical: 10.0,
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
                            padding: const EdgeInsets.only(top: 22),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyString(
                                  myText: "Dr.Zia Ali",
                                  style: GoogleFonts.jost(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.0,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                                MyString(
                                  // myText: myCallingText[index],
                                  myText: myCallingTextThirdTab[index],
                                  style: GoogleFonts.jost(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffE6EFF9),
                                        borderRadius:
                                            BorderRadius.circular(60.0),
                                      ),
                                      child: Icon(
                                        // Icons.message,
                                        // mySecondicons[index],
                                        myIconThirdTab[index],
                                        color: const Color(0xff52ABA3),
                                        size: 20,
                                      ),
                                    ),

                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      width: 150,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff52ABA3),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          border:
                                              Border.all(color: Colors.white)),
                                      child: Center(
                                        child: MyString(
                                          myText: "Reschedule",
                                          style: GoogleFonts.jost(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                      ),
                                    ),

                                    //
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 70,
                            ),
                            MyString(
                              myText: "March 30 2023",
                              style: GoogleFonts.jost(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const VerticalDivider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            MyString(
                              myText: "06:00 pm",
                              style: GoogleFonts.jost(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    ));

    //
  }
}
