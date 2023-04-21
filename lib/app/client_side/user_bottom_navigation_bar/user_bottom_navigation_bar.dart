/*
// first code
// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah/app/client_side/screens/my_doctor_appoinment/my_doctor_appoinment.dart';
import 'package:spedah/app/client_side/screens/popular_doctor/popular_doctor.dart';
import '../../const/colors.dart';
import '../screens/search_doctor/search_doctor.dart';
import '../screens/user_Profile_update/user_profile_update.dart';
import '../screens/user_dashbourd/user_dashbourd.dart';

class UserBottomNavigation extends StatefulWidget {
  const UserBottomNavigation({super.key});

  @override
  State<UserBottomNavigation> createState() => _UserBottomNavigationState();
}

class _UserBottomNavigationState extends State<UserBottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    UserDashbourd(),
    PopularDoctor(),
    SearchDoctor(),
    MyDoctorAppoinment(),
    UserProfileUpdate(),
  ];

  // void _onTapped(int index) {
  //   setState(
  //     () {
  //       _selectedIndex = index;
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: AppColors.dashbourdContainerBtnColor,
          selectedLabelStyle: GoogleFonts.rubik(
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: GoogleFonts.rubik(
            fontWeight: FontWeight.w500,
            color: AppColors.PrimaryColor,
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_hospital,
              ),
              label: "Hospital",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month,
              ),
              label: "Calender",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile",
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: ((int index) {
            setState(
              () {
                _selectedIndex = index;
              },
            );
          }),
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
    );
  }
}



*/

/*

// second code

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spedah/app/client_side/screens/popular_doctor/popular_doctor.dart';
import 'package:spedah/app/client_side/screens/search_doctor/search_doctor.dart';
import 'package:spedah/app/client_side/screens/user_Profile_update/user_profile_update.dart';
import 'package:spedah/app/client_side/screens/user_dashbourd/user_dashbourd.dart';
import '../screens/my_doctor_appoinment/my_doctor_appoinment.dart';

class UserBottomNavigationBar extends StatefulWidget {
  const UserBottomNavigationBar({super.key});

  @override
  State<UserBottomNavigationBar> createState() =>
      _UserBottomNavigationBarState();
}

class _UserBottomNavigationBarState extends State<UserBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.local_hospital,
            ),
            label: "Hospital"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Search"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
            ),
            label: "Calender"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile"),
      ]),
      tabBuilder: ((context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: UserDashbourd(),
                );
              },
            );

          case 1:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: PopularDoctor(),
                );
              },
            );

          case 2:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: SearchDoctor(),
                );
              },
            );

          case 3:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: MyDoctorAppoinment(),
                );
              },
            );

          case 4:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: UserProfileUpdate(),
                );
              },
            );
        }
        return Container();
      }),
    );
  }
}

*/

// third code

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spedah/app/client_side/screens/doctor_appoinment/doctor_appoinment.dart';
import 'package:spedah/app/client_side/screens/user_Profile_update/user_profile_update.dart';
import 'package:spedah/app/const/colors.dart';

import '../screens/my_doctor_appoinment/my_doctor_appoinment.dart';
import '../screens/popular_doctor/popular_doctor.dart';
import '../screens/search_doctor/search_doctor.dart';
import '../screens/user_dashbourd/user_dashbourd.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: AppColors.blackColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_hospital,
              color: AppColors.blackColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: AppColors.blackColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month,
              color: AppColors.blackColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: AppColors.blackColor,
            ),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: UserDashbourd(),
                );
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: PopularDoctor(),
                );
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: SearchDoctor(),
                );
              },
            );
          case 3:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: MyDoctorAppoinment(),
                );
              },
            );

          case 4:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: UserProfileUpdate(),
                );
              },
            );

          default:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: DoctorAppoinment(),
                );
              },
            );
        }
      },
    );
  }
}
