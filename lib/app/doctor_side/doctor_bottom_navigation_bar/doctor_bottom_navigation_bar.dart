import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah/app/doctor_side/doctor_dashbourd/doctor_dashbourd.dart';
import 'package:spedah/app/doctor_side/doctor_profile_update/doctor_profile_update.dart';
import 'package:spedah/app/doctor_side/doctor_working_hours/doctor_working_hours.dart';
import 'package:spedah/app/doctor_side/upcoming_appoinment/upcomming_appoinment.dart';

import '../../const/colors.dart';

class DoctorBottomNavigation extends StatefulWidget {
  const DoctorBottomNavigation({super.key});

  @override
  State<DoctorBottomNavigation> createState() => _DoctorBottomNavigationState();
}

class _DoctorBottomNavigationState extends State<DoctorBottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    DoctorDashbourd(),
    DoctorWorkingHours(),
    UpcommingAppoinment(),
    DoctorProfileUpdate(),
  ];

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
                Icons.search,
                color: Colors.grey,
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
      body: _screens[_selectedIndex],
    );
  }
}
