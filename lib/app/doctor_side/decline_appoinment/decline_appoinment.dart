import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const/colors.dart';
import '../../widgets/custom_btn.dart';
import '../../widgets/mystring.dart';

class DeclineAppoinment extends StatefulWidget {
  const DeclineAppoinment({super.key});

  @override
  State<DeclineAppoinment> createState() => _DeclineAppoinmentState();
}

class _DeclineAppoinmentState extends State<DeclineAppoinment> {
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
          myText: "Decline Reason",
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
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
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
                width: 342,
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
                height: 20,
              ),
              Center(
                child: UIButton(
                  borderRadius: BorderRadius.circular(40.0),
                  onTap: () {},
                  color: AppColors.medicalhistorybtnbgcolor,
                  labelText: "Send",
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
            ],
          ),
        ),
      ),
    );
  }
}
