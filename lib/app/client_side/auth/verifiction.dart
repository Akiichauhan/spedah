import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah/app/client_side/auth/change_password.dart';
import 'package:spedah/app/client_side/auth/forgot_password.dart';

import '../../const/colors.dart';
import '../../widgets/custom_btn.dart';
import '../../widgets/mystring.dart';
import 'package:pinput/pinput.dart';

class Varification extends StatefulWidget {
  const Varification({super.key});

  @override
  State<Varification> createState() => _VarificationState();
}

class _VarificationState extends State<Varification> {
  final TextEditingController _otpVarification = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Get.to(
                const Forgotpassword(),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff1F5460),
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 18, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: MyString(
                  myText: "Varification",
                  style: GoogleFonts.sora(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w600,
                    color: AppColors.forgotPasTextColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: MyString(
                    myText: "Enter Varification Code",
                    style: GoogleFonts.jost(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Pinput(
                      controller: _otpVarification,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      length: 4,
                      defaultPinTheme: PinTheme(
                        height: 50.0,
                        width: 50.0,
                        textStyle: GoogleFonts.sora(
                          fontSize: 26.0,
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff52ABA3),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Row(
                        children: [
                          MyString(
                            myText: " 00-00",
                            style: GoogleFonts.jost(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blackColor,
                            ),
                          ),
                          const Spacer(),
                          MyString(
                            myText: " Resend",
                            style: GoogleFonts.jost(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: UIButton(
                        borderRadius: BorderRadius.circular(40.0),
                        onTap: () {
                          if (formKey.currentState!.validate() == true) {
                            Get.to(
                              const ChangePassword(),
                            );
                          }
                        },
                        color: AppColors.forgotPasswordBtnColor,
                        labelText: "Resend",
                        height: 56,
                        width: 310,
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
              const SizedBox(
                height: 180,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                alignment: Alignment.center,
                child: const Divider(
                  height: 10,
                  indent: 70.0,
                  endIndent: 100.0,
                  thickness: 4,
                  color: AppColors.splashLoginColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
