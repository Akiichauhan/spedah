import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah/app/client_side/auth/forgot_password.dart';
import 'package:spedah/app/client_side/screens/main_screen/main_screen.dart';
import 'package:spedah/app/client_side/user_bottom_navigation_bar/user_bottom_navigation_bar.dart';
import 'package:spedah/app/const/colors.dart';
import 'package:spedah/app/persistnt_botom/persistante.dart';
import 'package:spedah/app/widgets/mystring.dart';
import '../../widgets/custom_btn.dart';
import 'sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  var obSecuretext = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashWhiteColor,
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Get.to(
                const MainScreen(),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff1F5460),
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyString(
                      myText: "Welcome Back",
                      style: GoogleFonts.sora(
                        color: AppColors.splashLoginColor,
                        fontSize: 26.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    MyString(
                      myText: "Enter your credentail to continue",
                      style: GoogleFonts.sora(
                        color: AppColors.loginTitleColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
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
                          Icons.person_outline,
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
                      height: 20,
                    ),
                    TextFormField(
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
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                        color: AppColors.forgotTextformfieldTextColor,
                      ),
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
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(30),
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
                        labelText: "Enter Password",
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          color: AppColors.changePasswordTextformField,
                        ),
                        labelStyle: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          color: AppColors.changePasswordTextformField,
                          fontSize: 16.0,
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
                      height: 20.0,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          Get.to(
                            const Forgotpassword(),
                          );
                        },
                        child: MyString(
                          myText: "Forgot Password?",
                          style: GoogleFonts.sora(
                            color: AppColors.loginTitleColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 22.0,
                    ),
                    Center(
                      child: UIButton(
                        borderRadius: BorderRadius.circular(100.0),
                        onTap: () {
                          if (formKey.currentState!.validate() == true) {
                            Get.to(
                              const MyBottomNavigationBar(),
                            );
                          }
                        },
                        color: AppColors.forgotPasswordBtnColor,
                        labelText: "Log in",
                        height: 56,
                        width: 319,
                        style: GoogleFonts.jost(
                          fontSize: 20.0,
                          color: AppColors.splashWhiteColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.062,
                        padding: const EdgeInsets.all(12.0),
                        width: MediaQuery.of(context).size.width * 7,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: AppColors.blackColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Icon(
                              Icons.apple,
                              color: AppColors.whiteColor,
                            ),
                            const SizedBox(width: 16.0),
                            Text(
                              'Log in using Apple',
                              style: GoogleFonts.sora(
                                color: AppColors.splashWhiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 34,
                            width: 34,
                            child: Image.asset(
                              "images/google.png",
                              height: 20.0,
                              width: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 34,
                            width: 34,
                            child: Image.asset(
                              "images/facebook.png",
                              height: 20.0,
                              width: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 36,
                            width: 36,
                            child: Image.asset(
                              "images/linkdin.png",
                              height: 22.0,
                              width: 22.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          Get.to(
                            const SignUp(),
                          );
                        },
                        child: MyString(
                          myText: "Don't have account? Sign up",
                          style: GoogleFonts.sora(
                            color: AppColors.loginTitleColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
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
          ),
        ),
      ),
    );
  }
}
