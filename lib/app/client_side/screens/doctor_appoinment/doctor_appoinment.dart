import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah/app/client_side/screens/appoinemt_medical_history/appoinemt_medical_history.dart';
import 'package:spedah/app/client_side/screens/single_doctor_full_detail/single_doctor_full_detail.dart';

import '../../../const/colors.dart';
import '../../../widgets/custom_btn.dart';
import '../../../widgets/mystring.dart';

enum Gender { male, female, other }

class DoctorAppoinment extends StatefulWidget {
  const DoctorAppoinment({super.key});

  @override
  State<DoctorAppoinment> createState() => _DoctorAppoinmentState();
}

class _DoctorAppoinmentState extends State<DoctorAppoinment> {
  Gender _gender = Gender.male;

  String? gender;

  List myDate = ["12", "13", "14", "15", "16", "17", "18", "19", "20"];
  List myDay = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN", "MON"];
  List myTime = [
    "10:00 AM",
    "10:30 AM",
    "11:00 AM",
    "11:30 AM",
    "12:00 AM",
    "12:30 AM",
    "1:00 AM",
  ];

  List mySecondTime = [
    "10:00 AM",
    "10:30 AM",
    "11:00 AM",
    "11:30 AM",
    "12:00 AM",
    "12:30 AM",
    "1:00 AM",
  ];

  final List<IconData> icons = [
    Icons.watch_later_outlined,
    Icons.watch_later_outlined,
    Icons.watch_later_outlined,
    Icons.watch_later_outlined,
    Icons.watch_later_outlined,
    Icons.watch_later_outlined,
    Icons.watch_later_outlined,
  ];

  final List<IconData> mySecondicons = [
    Icons.watch_later_outlined,
    Icons.watch_later_outlined,
    Icons.watch_later_outlined,
    Icons.watch_later_outlined,
    Icons.watch_later_outlined,
    Icons.watch_later_outlined,
    Icons.watch_later_outlined,
  ];

  List myAgeText = ["12", "13", "14", "15"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.to(
                const SingleDoctorFullDetail(),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.blackColor,
            )),
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        title: MyString(
          myText: 'Doctor Appoinment',
          style: GoogleFonts.jost(
            color: AppColors.blackColor,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                myDates(),
                const SizedBox(
                  height: 12,
                ),
                appoinmentData(),
                const SizedBox(
                  height: 12,
                ),
                myTimes(),
                const SizedBox(
                  height: 10,
                ),
                myTiming(),
                const SizedBox(
                  height: 30.0,
                ),
                mySecondTiming(),
                const SizedBox(
                  height: 30.0,
                ),
                myPatientDetail(),
                const SizedBox(
                  height: 10,
                ),
                myfirstName(),
                const SizedBox(
                  height: 10,
                ),
                myAge(),
                const SizedBox(
                  height: 10,
                ),
                myGender(),
                const SizedBox(
                  height: 10,
                ),
                myProblems(),
                const SizedBox(
                  height: 10,
                ),
                myConform(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget myDates() {
    return MyString(
      myText: "March, 2023 ",
      style: GoogleFonts.jost(
          fontWeight: FontWeight.w500,
          fontSize: 16.9,
          color: AppColors.blackColor),
    );
  }

  Widget appoinmentData() {
    return SizedBox(
      width: double.infinity,
      height: 82,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 6, 0),
          child: Container(
            height: 78,
            width: 60,
            decoration: BoxDecoration(
              color: const Color(0xffE6EFF9),
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyString(
                  myText: myDate[index].toString(),
                  style: GoogleFonts.jost(
                      fontWeight: FontWeight.w500,
                      fontSize: 24.0,
                      color: AppColors.blackColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                MyString(
                  myText: myDay[index].toString(),
                  // myText: "TUE",
                  style: GoogleFonts.jost(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      color: AppColors.blackColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget myTimes() {
    return MyString(
      myText: "Availble Time ",
      style: GoogleFonts.jost(
          fontWeight: FontWeight.w500,
          fontSize: 16.9,
          color: AppColors.blackColor),
    );
  }

  Widget myTiming() {
    return SizedBox(
      height: 46,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              color: const Color(0xffE6EFF9),
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icons[index],
                  size: 17,
                  color: AppColors.blackColor,
                ),
                MyString(
                  myText: myTime[index].toString(),
                  style: GoogleFonts.jost(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0,
                      color: AppColors.blackColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget mySecondTiming() {
    return SizedBox(
      height: 46,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              color: const Color(0xffE6EFF9),
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  mySecondicons[index],
                  size: 17,
                  color: AppColors.blackColor,
                ),
                MyString(
                  myText: mySecondTime[index].toString(),
                  style: GoogleFonts.jost(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0,
                      color: AppColors.blackColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget myPatientDetail() {
    return MyString(
      myText: "Patient Detail ",
      style: GoogleFonts.jost(
          fontWeight: FontWeight.w600,
          fontSize: 20.9,
          color: AppColors.blackColor),
    );
  }

  Widget myfirstName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyString(
          myText: "Full Name ",
          style: GoogleFonts.jost(
              fontWeight: FontWeight.w500,
              fontSize: 18.9,
              color: const Color(0xff584F4F)),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(55.0)),
          width: 344,
          height: 50,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: GoogleFonts.jost(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
              color: AppColors.forgotTextformfieldTextColor,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xffE6EFF9),
              labelText: "Akash Chauhan",
              labelStyle: GoogleFonts.jost(
                fontWeight: FontWeight.w400,
                color: AppColors.loginTitleColor,
                fontSize: 16.0,
              ),
              errorStyle: GoogleFonts.jost(
                fontWeight: FontWeight.w400,
                //color: AppColors.loginTitleColor,
                color: const Color(0xffE6EFF9),
                fontSize: 16.0,
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xffE6EFF9)),
                borderRadius: BorderRadius.circular(55),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xffE6EFF9),
                ),
                borderRadius: BorderRadius.circular(55),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget myAge() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyString(
          myText: "Age",
          style: GoogleFonts.jost(
              fontWeight: FontWeight.w500,
              fontSize: 18.9,
              color: const Color(0xff584F4F)),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: 344,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xffE6EFF9),
            borderRadius: BorderRadius.circular(35.0),
          ),
          child: Container(
            padding: const EdgeInsets.all(6.0),
            child: MyString(
              myText: myAgeText.toString(),
              style: GoogleFonts.jost(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget myGender() {
    log("Thsi Gender is call ");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyString(
          myText: "Gender",
          style: GoogleFonts.jost(
            fontSize: 18.0,
            color: AppColors.blackColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          children: <Widget>[
            Radio<Gender>(
              value: Gender.male,
              groupValue: _gender,
              onChanged: (value) {
                setState(() {
                  _gender = value!;
                });
              },
            ),
            Text(
              'Male',
              style: GoogleFonts.jost(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Radio<Gender>(
              value: Gender.female,
              groupValue: _gender,
              onChanged: (value) {
                setState(() {
                  _gender = value!;
                });
              },
            ),
            Text(
              'Female',
              style: GoogleFonts.jost(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Radio<Gender>(
              value: Gender.other,
              groupValue: _gender,
              onChanged: (value) {
                setState(() {
                  _gender = value!;
                });
              },
            ),
            Text(
              'Other',
              style: GoogleFonts.jost(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget myProblems() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyString(
          myText: "Write your problem ",
          style: GoogleFonts.jost(
              fontWeight: FontWeight.w500,
              fontSize: 16.9,
              color: AppColors.blackColor),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 150,
          width: 343,
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          decoration: BoxDecoration(
            color: AppColors.textformfieldbgcolor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: TextFormField(
            keyboardType: TextInputType.text,
            style: GoogleFonts.jost(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
            decoration: InputDecoration(
              labelText: "",
              labelStyle: GoogleFonts.jost(
                fontWeight: FontWeight.w600,
                color: AppColors.blackColor,
                fontSize: 18.0,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: AppColors.textformfieldbgcolor),
                borderRadius: BorderRadius.circular(30.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: AppColors.textformfieldbgcolor),
                //<-- SEE HERE
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget myConform() {
    return Center(
      child: UIButton(
        borderRadius: BorderRadius.circular(40.0),
        onTap: () {
          Get.to(
            const AppoinmentMedicalHistory(),
          );
        },
        color: AppColors.medicalhistorybtnbgcolor,
        labelText: "Next",
        height: 55,
        width: 300,
        style: GoogleFonts.jost(
          fontSize: 26.0,
          color: AppColors.splashWhiteColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
