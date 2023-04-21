// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spedah/app/client_side/screens/chat/chat.dart';
import 'package:spedah/app/const/colors.dart';
import 'package:spedah/app/widgets/mystring.dart';

import '../../../widgets/Icon_text_input.dart';
import '../user_dashbourd/user_dashbourd.dart';

class UserNotification extends StatefulWidget {
  const UserNotification({super.key});

  @override
  _UserNotificationState createState() => _UserNotificationState();
}

class _UserNotificationState extends State<UserNotification>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        vsync: this,
        length: 2); // Change the length to the number of tabs you need
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.to(
                const UserDashbourd(),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff1F5460),
            )),
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        title: MyString(
          myText: 'Notification',
          style: GoogleFonts.jost(
            color: AppColors.blackColor,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        bottom: TabBar(
          indicatorColor: AppColors.medicalhistorybtnbgcolor,
          controller: _tabController,
          tabs: [
            Tab(
                icon: MyString(
              myText: "Active",
              style: GoogleFonts.jost(
                color: AppColors.medicalhistorybtnbgcolor,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            )),
            Tab(
                icon: MyString(
              myText: "Archived",
              style: GoogleFonts.jost(
                color: AppColors.medicalhistorybtnbgcolor,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            )),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          MyActive(),
          const Icon(Icons.directions_transit),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget MyActive() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(6, 8, 6, 6),
      child: Column(
        children: [
          mySearch(),
          myActivePage(),
        ],
      ),
    );
  }

  Widget mySearch() {
    return Container(
      //  margin: EdgeInsets.all(fixPadding * 2.0),
      //padding: EdgeInsets.all(fixPadding * 1.9),
      padding: const EdgeInsets.fromLTRB(18, 16, 18, 10),
      height: 70,
      child: IconInputText(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(18.0),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(18.0),
          ),
        ),
        labelText: "Search here",
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget myActivePage() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(6, 8, 6, 6),
        child: SizedBox(
          height: 700,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Get.to(const ChatScreen());
              },
              child: Container(
                height: 90,
                width: 342,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color(0xffE6EFF9),
                ),
                margin: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: const SizedBox(
                    height: 60.0,
                    width: 60.0,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/row_build.png',
                      ),
                    ),
                  ),
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 16, 6, 0),
                        child: MyString(
                          myText: "Dr.Jenny Roy",
                          style: GoogleFonts.jost(
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackColor,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      MyString(
                        myText: "How's your diet looking tod....",
                        style: GoogleFonts.jost(
                          color: const Color(0xff52ABA3),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: const Color(0xff2C6EFF),
                        ),
                        height: 11,
                        width: 11,
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      Text(
                        "05:00",
                        style: GoogleFonts.jost(
                            color: const Color(0xffCDC5C5),
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
