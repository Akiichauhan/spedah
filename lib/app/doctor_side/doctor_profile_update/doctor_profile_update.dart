// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:spedah/app/doctor_side/doctor_drawer/doctor_drawer.dart';

import '../../const/colors.dart';
import '../../widgets/custom_btn.dart';
import '../../widgets/mystring.dart';
import '../doctor_dashbourd/doctor_dashbourd.dart';

class DoctorProfileUpdate extends StatefulWidget {
  const DoctorProfileUpdate({super.key});

  @override
  State<DoctorProfileUpdate> createState() => _DoctorProfileUpdateState();
}

class _DoctorProfileUpdateState extends State<DoctorProfileUpdate> {
  double fixPadding = 10.0;
  File? imageFile;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      endDrawer: const DoctorDrawer(),
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Color(0xff1F5460),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: MyString(
          myText: "Profile",
          style: GoogleFonts.jost(
            color: AppColors.blackColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),

        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 10),
        //     child: IconButton(
        //       // onPressed: () {
        //       //   Get.to(
        //       //     const DoctorDrawer(),
        //       //   );
        //       // },
        //       icon: const Icon(
        //         Icons.settings,
        //         color: AppColors.blackColor,
        //         size: 20,
        //       ),
        //       onPressed: () {
        //         _scaffoldKey.currentState?.openEndDrawer();
        //         Get.to(
        //           const DoctorDrawer(),
        //         );
        //       },
        //     ),
        //   ),
        // ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Container(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyString(
                      myText: "aama right side ma drawer open nai thatu",
                      style: GoogleFonts.jost(
                        color: AppColors.PrimaryColor,
                        fontSize: 20,
                      ),
                    ),
                    Center(
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 80.0,
                            backgroundImage: imageFile == null
                                ? const AssetImage("images/dentist.png")
                                : FileImage(File(imageFile!.path))
                                    as ImageProvider,
                          ),
                          Positioned(
                            bottom: 20,
                            right: 20,
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) => bottomSheet(),
                                );
                              },
                              child: const Icon(
                                Icons.camera_alt,
                                size: 28.0,
                                // color: AppColors.PrimaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: MyString(
                        myText: "Name",
                        style: GoogleFonts.jost(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
                            color: const Color(0xff584F4F)),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 50,
                      width: 343,
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
                          prefixIcon: const Icon(
                            Icons.person,
                            color: AppColors.blackColor,
                          ),
                          labelText: "Dr. Rahul",
                          labelStyle: GoogleFonts.jost(
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackColor,
                            fontSize: 18.0,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: AppColors.textformfieldbgcolor),
                            /*
                            borderSide: const BorderSide(
                                width: 3, color: AppColors.loginTitleColor),
                         */
                            // //<-- SEE HERE
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                //color: AppColors.textformfieldbgcolor
                                ),
                            //<-- SEE HERE
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: MyString(
                        myText: "Categories",
                        style: GoogleFonts.jost(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
                            color: const Color(0xff584F4F)),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 50,
                      width: 343,
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
                          prefixIcon: const Icon(
                            Icons.category,
                            color: AppColors.blackColor,
                          ),
                          labelText: "Orthopedic",
                          labelStyle: GoogleFonts.jost(
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackColor,
                            fontSize: 18.0,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: AppColors.textformfieldbgcolor),
                            /*
                            borderSide: const BorderSide(
                                width: 3, color: AppColors.loginTitleColor),
                   */
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
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: MyString(
                        myText: "Phone",
                        style: GoogleFonts.jost(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
                            color: const Color(0xff584F4F)),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 50,
                      width: 343,
                      decoration: BoxDecoration(
                        color: AppColors.textformfieldbgcolor,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        style: GoogleFonts.jost(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.phone,
                            color: AppColors.blackColor,
                          ),
                          labelText: "Phone",
                          labelStyle: GoogleFonts.jost(
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackColor,
                            fontSize: 18.0,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: AppColors.textformfieldbgcolor),

                            /*
                            borderSide: const BorderSide(
                                width: 3, color: AppColors.loginTitleColor),
                           */
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
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: MyString(
                        myText: "Location",
                        style: GoogleFonts.jost(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
                            color: const Color(0xff584F4F)),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 50,
                      width: 343,
                      decoration: BoxDecoration(
                        color: AppColors.textformfieldbgcolor,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        style: GoogleFonts.jost(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.location_on,
                            color: AppColors.blackColor,
                          ),
                          labelText: "INDIA",
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
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: UIButton(
                            borderRadius: BorderRadius.circular(100.0),
                            onTap: () {
                              if (formKey.currentState!.validate() == true) {
                                Get.to(
                                  //     const BottomNavigation(),
                                  const DoctorDashbourd(),
                                );
                              }
                            },
                            color: AppColors.forgotPasswordBtnColor,
                            labelText: "Update Profile",
                            height: 56,
                            width: 319,
                            style: GoogleFonts.jost(
                              fontSize: 18.0,
                              color: AppColors.splashWhiteColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),

                        //
                      ],
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

  Widget bottomSheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: <Widget>[
          MyString(
            myText: "Choose Profile Photo",
            style: GoogleFonts.jost(
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                icon: const Icon(
                  Icons.camera,
                ),
                label: MyString(
                  myText: "Camera",
                  style: GoogleFonts.jost(),
                ),
                onPressed: () {
                  imageFromCamera();
                  // takePhoto(ImageSource.camera);
                },
              ),
              //
              const SizedBox(
                width: 10,
              ),
              ElevatedButton.icon(
                icon: const Icon(
                  Icons.image,
                ),
                label: MyString(
                  myText: "Gallary",
                  style: GoogleFonts.jost(),
                ),
                onPressed: () {
                  imageFromGallery();
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  imageFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  imageFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
}
