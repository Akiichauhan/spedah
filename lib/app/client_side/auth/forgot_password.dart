import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:spedah/app/client_side/auth/sign_in.dart';
import 'package:spedah/app/client_side/auth/verifiction.dart';

import '../../const/colors.dart';
import '../../widgets/custom_btn.dart';
import '../../widgets/mystring.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  final TextEditingController _emailForgotPassword = TextEditingController();
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
                const SignIn(),
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
                  myText: "Forgot Password",
                  style: GoogleFonts.sora(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w600,
                    color: AppColors.forgotPasTextColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _emailForgotPassword,
                      cursorHeight: 30,
                      keyboardType: TextInputType.emailAddress,
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                        color: AppColors.forgotTextformfieldTextColor,
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Required email please "),
                        EmailValidator(errorText: "Not valid "),
                      ]),
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 15),
                        isCollapsed: true,
                        labelText: "Enter Email",
                        prefixIcon: const Icon(
                          Icons.email,
                          color: AppColors.loginTitleColor,
                        ),
                        labelStyle: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          color: AppColors.loginTitleColor,
                          fontSize: 16.0,
                        ),
                        errorStyle: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          color: Colors.red,
                          fontSize: 16.0,
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.changePasswordIconBGColor,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    const MyString(
                      myText: "AAya Google Na Captcha Code Mukvana che",
                    ),
                    const SizedBox(
                      height: 190,
                    ),
                    Center(
                      child: UIButton(
                        borderRadius: BorderRadius.circular(40.0),
                        onTap: () {
                          if (formKey.currentState!.validate() == true) {
                            Get.to(
                              const Varification(),
                            );
                          }
                        },
                        color: AppColors.forgotPasswordBtnColor,
                        labelText: "Resend",
                        height: 56,
                        width: 319,
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
