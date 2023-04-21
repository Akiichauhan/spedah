import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spedah/app/client_side/screens/my_doctor_appoinment/my_doctor_appoinment.dart';
import 'package:spedah/app/client_side/screens/popular_doctor/popular_doctor.dart';
import 'package:spedah/app/client_side/screens/search_doctor/search_doctor.dart';
import 'package:spedah/app/client_side/screens/user_dashbourd/user_dashbourd.dart';

// void main() {
//   runApp(const MyBottomTab());
// }

class MyBottomTab extends StatefulWidget {
  const MyBottomTab({super.key});

  @override
  State<MyBottomTab> createState() => _MyBottomTabState();
}

class _MyBottomTabState extends State<MyBottomTab> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                //log("The Dashbourd is working");
                return const CupertinoPageScaffold(child: UserDashbourd());
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

          default:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: SearchDoctor());
              },
            );
          //

        }
      },
    );
  }
}
