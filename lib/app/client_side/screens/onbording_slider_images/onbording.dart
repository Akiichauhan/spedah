import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah/app/client_side/screens/main_screen/main_screen.dart';
import 'package:spedah/app/const/colors.dart';
import 'package:spedah/app/widgets/mystring.dart';

import '../../../widgets/custom_btn.dart';

class OnBording extends StatefulWidget {
  const OnBording({super.key});

  @override
  State<OnBording> createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {
  final PageController _pageController = PageController(initialPage: 0);
  final List<Widget> _screens = [
    Stack(
      children: [
        Container(
          color: AppColors.whiteColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                MyString(
                  myText: "Find Trusted Doctors",
                  style: GoogleFonts.jost(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(28, 6, 28, 0),
                  child: MyString(
                    myText:
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
                    style: GoogleFonts.jost(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: 0,
            right: 200,
            child: Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                color: Color(0xff52ABA3),
                borderRadius: BorderRadius.all(
                  Radius.circular(200),
                ),
              ),
            )),
        const Positioned(
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 60),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/onbording_one.png"),
                radius: 150,
              ),
            ),
          ),
        ),
      ],
    ),
    Stack(children: [
      Container(
        color: AppColors.whiteColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              MyString(
                myText: "Find Trusted Doctors",
                style: GoogleFonts.jost(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(28, 6, 28, 0),
                child: MyString(
                  myText:
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
                  style: GoogleFonts.jost(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
          top: 0,
          left: 200,
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
                color: Color(0xff52ABA3),
                borderRadius: BorderRadius.all(Radius.circular(200))),
          )),
      const Positioned(
          child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/onbording_second.png"),
                    radius: 150,
                  ))))
    ]),
    Stack(children: [
      Container(
        color: AppColors.whiteColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              MyString(
                myText: "Find Trusted Doctors",
                style: GoogleFonts.jost(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(28, 6, 28, 0),
                child: MyString(
                  myText:
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
                  style: GoogleFonts.jost(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
          top: 0,
          right: 200,
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
                color: Color(0xff52ABA3),
                borderRadius: BorderRadius.all(Radius.circular(200))),
          )),
      const Positioned(
          child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/onbording_three.png"),
                    radius: 150,
                  ))))
    ]),
  ];
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: _screens,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
          Positioned(
            bottom: 40.0,
            left: 0.0,
            right: 0.0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //  _currentPage != 0
                    _currentPage != _screens.length
                        ? Center(
                            child: UIButton(
                              borderRadius: BorderRadius.circular(100.0),
                              onTap: () {
                                _pageController.nextPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.ease);
                                //
                                Get.to(
                                  const MainScreen(),
                                );
                                //
                              },
                              color: AppColors.forgotPasswordBtnColor,
                              labelText: "Get Started",
                              height: 56,
                              width: 319,
                              style: GoogleFonts.jost(
                                fontSize: 18.0,
                                color: AppColors.splashWhiteColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        :
                        //_currentPage != _screens.length - 1

                        _currentPage != _screens.length
                            ? MyString(
                                myText: "Skip",
                                style: GoogleFonts.jost(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.blackColor),
                              )
                            : Container(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ignore: unused_element
  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];

    for (int i = 0; i < _screens.length; i++) {
      indicators.add(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            width: 10.0,
            height: 10.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentPage == i ? Colors.white : Colors.grey,
            ),
          ),
        ),
      );
    }

    return indicators;
  }
}
//
