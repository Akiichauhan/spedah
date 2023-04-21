import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah/app/client_side/screens/after_book_apoinment_otp_screen/otp_comes_from_server.dart';
import 'package:spedah/app/const/colors.dart';
import 'package:spedah/app/widgets/mystring.dart';

import '../../../widgets/custom_btn.dart';
import '../doctor_appoinment/doctor_appoinment.dart';

class AppoinmentMedicalHistory extends StatefulWidget {
  const AppoinmentMedicalHistory({super.key});

  @override
  State<AppoinmentMedicalHistory> createState() =>
      _AppoinmentMedicalHistoryState();
}

class _AppoinmentMedicalHistoryState extends State<AppoinmentMedicalHistory> {
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
          myText: "Medical History",
          style: GoogleFonts.jost(
            color: AppColors.blackColor,
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Get.to(
                const DoctorAppoinment(),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.blackColor,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: MyString(
                  myText: "Medical Condition",
                  style: GoogleFonts.jost(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: AppColors.medicalHistoryLabelColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                decoration: BoxDecoration(
                  color: AppColors.textformfieldbgcolor,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.jost(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                  decoration: InputDecoration(
                    labelText: "Asthama",
                    labelStyle: GoogleFonts.jost(
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor,
                      fontSize: 18.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: AppColors.textformfieldbgcolor),
                      // borderSide: const BorderSide(

                      //     width: 3, color: AppColors.loginTitleColor),
                      // //<-- SEE HERE
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: AppColors.textformfieldbgcolor),
                      //<-- SEE HERE
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: MyString(
                  myText: "Do You Have Any medication allergies?",
                  style: GoogleFonts.jost(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: AppColors.medicalHistoryLabelColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                decoration: BoxDecoration(
                  color: AppColors.textformfieldbgcolor,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.jost(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                  decoration: InputDecoration(
                    labelText: "Not Sure",
                    labelStyle: GoogleFonts.jost(
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor,
                      fontSize: 18.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: AppColors.textformfieldbgcolor),
                      // borderSide: const BorderSide(

                      //     width: 3, color: AppColors.loginTitleColor),
                      // //<-- SEE HERE
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: AppColors.textformfieldbgcolor),
                      //<-- SEE HERE
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: MyString(
                  myText: "Patient have been hospitalized before?",
                  style: GoogleFonts.jost(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: AppColors.medicalHistoryLabelColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                decoration: BoxDecoration(
                  color: AppColors.textformfieldbgcolor,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.jost(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                  decoration: InputDecoration(
                    labelText: "Yes",
                    labelStyle: GoogleFonts.jost(
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor,
                      fontSize: 18.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: AppColors.textformfieldbgcolor),
                      // borderSide: const BorderSide(

                      //     width: 3, color: AppColors.loginTitleColor),
                      // //<-- SEE HERE
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: AppColors.textformfieldbgcolor),
                      //<-- SEE HERE
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: MyString(
                  myText: "What are the brand and generic names?",
                  style: GoogleFonts.jost(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: AppColors.medicalHistoryLabelColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                decoration: BoxDecoration(
                  color: AppColors.textformfieldbgcolor,
                  borderRadius: BorderRadius.circular(30.0),
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
                      borderSide: const BorderSide(
                          color: AppColors.textformfieldbgcolor),
                      // borderSide: const BorderSide(

                      //     width: 3, color: AppColors.loginTitleColor),
                      // //<-- SEE HERE
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: AppColors.textformfieldbgcolor),
                      //<-- SEE HERE
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: MyString(
                  myText: "Spacificy Problem",
                  style: GoogleFonts.jost(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: AppColors.medicalHistoryLabelColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                height: 189,
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                decoration: BoxDecoration(
                  color: AppColors.textformfieldbgcolor,
                  borderRadius: BorderRadius.circular(30.0),
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
                      borderSide: const BorderSide(
                          color: AppColors.textformfieldbgcolor),
                      // borderSide: const BorderSide(

                      //     width: 3, color: AppColors.loginTitleColor),
                      // //<-- SEE HERE
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: AppColors.textformfieldbgcolor),
                      //<-- SEE HERE
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Center(
                child: UIButton(
                  borderRadius: BorderRadius.circular(40.0),
                  onTap: () {
                    Get.to(
                      const OTPScreenComes(),
                    );
                  },
                  color: AppColors.medicalhistorybtnbgcolor,
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
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
