import 'package:flutter/material.dart';
import 'package:spedah/app/const/colors.dart';
import 'package:spedah/app/widgets/mystring.dart';

// ignore: must_be_immutable
class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final VoidCallback? onPressed;
  final IconData? icon;
  String? myText;
  final Color? color;
  TextStyle? style;

  CustomAppbar({
    Key? key,
    this.onPressed,
    this.icon,
    this.style,
    this.myText,
    this.color,
  })  : preferredSize = const Size.fromHeight(70),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: MyString(
          myText: myText,
          style: style,
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              //  Navigator.pop(context, true);
            },
          ),
          const SizedBox(
            width: 250,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              icon,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
