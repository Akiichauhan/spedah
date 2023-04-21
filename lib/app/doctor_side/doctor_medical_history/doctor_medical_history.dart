import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const/colors.dart';
import '../../widgets/custom_btn.dart';
import '../../widgets/mystring.dart';

class DoctorMedicalHistory extends StatefulWidget {
  const DoctorMedicalHistory({super.key});

  @override
  State<DoctorMedicalHistory> createState() => _DoctorMedicalHistoryState();
}

class _DoctorMedicalHistoryState extends State<DoctorMedicalHistory> {
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
              onPressed: () {},
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
                      /*
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ),
                                );
                     */
                    },
                    color: AppColors.medicalhistorybtnbgcolor,
                    labelText: "Book Appoinment",
                    //height: MediaQuery.of(context).size.height * 0.058,
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
        ));
  }
}
