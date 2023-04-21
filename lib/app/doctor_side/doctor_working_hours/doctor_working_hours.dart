import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const/colors.dart';
import '../../widgets/mystring.dart';

class DoctorWorkingHours extends StatefulWidget {
  const DoctorWorkingHours({super.key});

  @override
  State<DoctorWorkingHours> createState() => _DoctorWorkingHoursState();
}

class _DoctorWorkingHoursState extends State<DoctorWorkingHours> {
  int index = 0;

  List workingDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
  List workingStartTime = [
    "10:00 AM",
    "10:00 AM",
    "10:00 AM",
    "10:00 AM",
    "Unavailble",
    "10:00 AM",
    "Unavailble",
  ];
  List workingEndTime = [
    "01:00 AM",
    "01:00 AM",
    "02:00 AM",
    "01:00 AM",
    "02:00 AM",
    "02:00 AM",
    "02:00 AM",
  ];

  List disabled = [4, 6];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Color(0xff1F5460),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: MyString(
          myText: "Working Hours",
          style: GoogleFonts.jost(
            color: AppColors.blackColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 6, 14, 0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyString(
                  myText:
                      "This Information will be displyed to the patient who will request",
                  style: GoogleFonts.jost(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff888888),
                    fontSize: 16.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              _workingShedual(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _workingShedual() {
    return SizedBox(
      height: 1000,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: Row(
            children: [
              SizedBox(
                width: 60,
                height: 30,
                child: Transform.scale(
                  scale: 1.1,
                  child: FlutterSwitch(
                    height: 30.0,
                    width: 60.0,
                    padding: 4.0,
                    toggleSize: 26.0,
                    borderRadius: 20.0,
                    value: switchList[index].value,
                    /*
                  onToggle: null,
                    (value) {
                      disabled.contains(index)
                          ? setState(() {
                              switchList[index].value = false;
                            })
                          : setState(() {
                              switchList[index].value = value;
                            });

                      /*
                    setState(() {
                      if (index != 4 && index != 6) {
                        switchList[index].value = value;
                      }
                    });
*/

                      MaterialStateProperty.resolveWith<Color>((states) =>
                          states.contains(MaterialState.selected)
                              ? Colors.white
                              : Colors.blue);
                      MaterialTapTargetSize.padded;
                    },
           
           */

                    onToggle: (value) {
                      null;
                    },

                    activeColor: AppColors.whiteColor,
                    activeToggleColor: const Color(0xff52ABA3),

                    //    inactiveTrackColor: const Color(0xffECECF0),
                    //  activeTrackColor: const Color(0xff52ABA3),
                  ),

                  /*
Switch(
                    value: switchList[index].value,
                    onChanged: (value) {
                      disabled.contains(index)
                          ? setState(() {
                              switchList[index].value = false;
                            })
                          : setState(() {
                              switchList[index].value = value;
                            });

                      AppColors.editProfileBtnColor;
                      const Color(0xffECECF0);
                      Colors.lightBlue;
                      Colors.grey[300];

                      MaterialStateProperty.resolveWith<Color>((states) =>
                          states.contains(MaterialState.selected)
                              ? Colors.white
                              : Colors.blue);
                      MaterialTapTargetSize.padded;
                    },
                    activeColor: AppColors.whiteColor,
                    inactiveTrackColor: const Color(0xffECECF0),
                    activeTrackColor: const Color(0xff52ABA3),
                  ),
           */
                ),

                /// bro i am using here flutter switch
              ),
              const SizedBox(
                width: 8,
              ),
              MyString(
                myText: workingDays[index],
                style: GoogleFonts.jost(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xffE6EFF9),
                ),
                height: 45,
                width: 95,
                child: MyString(
                  myText: workingStartTime[index],
                  style: GoogleFonts.jost(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor),
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Container(
                color: AppColors.blackColor,
                child: const Divider(
                  height: 2,
                  thickness: 2,
                  color: AppColors.blackColor,
                  indent: 20,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xffE6EFF9),
                ),
                height: 45,
                width: 95,
                child: MyString(
                  myText: workingEndTime[index],
                  style: GoogleFonts.jost(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
class SwitchData {
  String title;
  bool value;

  SwitchData({required this.title, required this.value});
}

List<SwitchData> switchList = [
  SwitchData(title: 'Switch 1', value: false),
  SwitchData(title: 'Switch 2', value: false),
  SwitchData(title: 'Switch 3', value: false),
  SwitchData(title: 'Switch 1', value: false),
  SwitchData(title: 'Switch 2', value: false),
  SwitchData(title: 'Switch 3', value: false),
  SwitchData(title: 'Switch 1', value: false),
];
//

//