import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:spedah/app/client_side/auth/sign_in.dart';
import 'package:spedah/app/client_side/auth/verifiction.dart';
import 'package:spedah/app/widgets/mystring.dart';

import '../../const/colors.dart';
import '../../widgets/custom_btn.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  var obSecuretext = true;
  var myObSecureText = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool _isPasswordMatch() {
    if (_passwordController.text == _confirmPasswordController.text) {
      return true;
    } else {
      return false;
    }
  }

  String? _validatePassword(String? value) {
    if (!_isPasswordMatch()) {
      return 'Passwords do not match';
    }
    return null;
  }

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
                const Varification(),
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
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: MyString(
                  myText: "Change Password",
                  style: GoogleFonts.sora(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w600,
                    color: AppColors.forgotPasTextColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _passwordController,
                      cursorHeight: 30,
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText: "Required Strong password"),
                        MinLengthValidator(8,
                            errorText: "Morethen 8 cherecter required"),
                        PatternValidator(r'(?=.*?[#?!@$%^&*-])',
                            errorText: "Please enter special cherecter")
                      ]),
                      keyboardType: TextInputType.text,
                      obscureText: obSecuretext,
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 15),
                        isCollapsed: true,
                        errorStyle: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          color: Colors.red,
                          fontSize: 16.0,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obSecuretext = !obSecuretext;
                            });
                          },
                          child: obSecuretext
                              ? const Icon(
                                  Icons.visibility_off,
                                  color: AppColors.loginTitleColor,
                                )
                              : const Icon(
                                  Icons.visibility,
                                  color: AppColors.loginTitleColor,
                                ),
                        ),
                        labelText: "Enter New Password",
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: AppColors.loginTitleColor,
                        ),
                        labelStyle: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          color: AppColors.loginTitleColor,
                          fontSize: 16.0,
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.changePasswordIconBGColor,
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
                      height: 20,
                    ),
                    TextFormField(
                      cursorHeight: 30,
                      controller: _confirmPasswordController,
                      validator: _validatePassword,
                      keyboardType: TextInputType.text,
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                        color: AppColors.forgotTextformfieldTextColor,
                      ),
                      obscureText: myObSecureText,
                      decoration: InputDecoration(
                        errorStyle: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          color: Colors.red,
                          fontSize: 16.0,
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 15),
                        isCollapsed: true,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              myObSecureText = !myObSecureText;
                            });
                          },
                          child: myObSecureText
                              ? const Icon(
                                  Icons.visibility_off,
                                  color: AppColors.loginTitleColor,
                                )
                              : const Icon(
                                  Icons.visibility,
                                  color: AppColors.loginTitleColor,
                                ),
                        ),
                        labelText: "Enter New Password",
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: AppColors.loginTitleColor,
                        ),
                        labelStyle: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          color: AppColors.loginTitleColor,
                          fontSize: 16.0,
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.changePasswordIconBGColor,
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
                      height: 30.0,
                    ),
                    Center(
                      child: UIButton(
                        borderRadius: BorderRadius.circular(100.0),
                        onTap: () {
                          if (formKey.currentState!.validate() == true) {
                            _isPasswordMatch()
                                ? () {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                            content: MyString(
                                      myText: "Password Match",
                                    )));
                                  }
                                : null;

                            Get.to(
                              const SignIn(),
                            );
                          }
                        },
                        color: AppColors.forgotPasswordBtnColor,
                        labelText: "Set New Password",
                        height: 56,
                        width: 319,
                        style: GoogleFonts.jost(
                          fontSize: 18.0,
                          color: AppColors.splashWhiteColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 144,
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
