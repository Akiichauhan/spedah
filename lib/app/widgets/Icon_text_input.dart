// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class IconInputText extends StatelessWidget {
  IconInputText({
    Key? key,
    required this.labelText,
    this.controller,
    this.prefixIcon,
    this.maxLength,
    this.color,
    this.keyboardType,
    this.obscureText,
    this.validator,
    this.suffixIcon,
    this.hintText,
    this.prefix,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    TextInputAction? textInputAction,
    this.filleColor,
    this.inputFormatters,
    this.counterText = "",
    this.onChanged,
  }) : super(key: key);

  final String labelText;
  final String? hintText;
  final InputBorder? enabledBorder;
  //final IconData? prefixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final int? maxLength;
  final Color? color;
  final Color? filleColor;
  final InputBorder? border;
  bool? obscureText = true;
  TextInputType? keyboardType;
  FormFieldValidator<String>? validator;
  final Widget? suffixIcon;
  TextInputAction? textInputAction;
  List<TextInputFormatter>? inputFormatters;
  final Widget? prefix;
  final InputBorder? focusedBorder;
  final ValueChanged<String>? onChanged;
  String counterText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: const [],

      validator: validator,
      onChanged: onChanged,

      controller: controller,
      maxLength: maxLength,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      //obscureText: obscureText!,
      obscureText: obscureText ?? false,
      style: GoogleFonts.roboto(
          fontWeight: FontWeight.w600, textStyle: const TextStyle()),
      decoration: InputDecoration(
          fillColor: filleColor,
          counterText: counterText,
          focusedBorder: focusedBorder,
          enabledBorder: enabledBorder,
          contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          prefixIcon: prefixIcon,
          prefix: prefix,
          hintText: hintText,
          labelText: labelText,
          suffixIcon: suffixIcon,
          border:
              // OutlineInputBorder(
              //   borderRadius: border

              //     //    borderRadius: BorderRadius.circular(12.0),
              //     //borderSide: const BorderSide(color: Colors.red, width: 6.0),
              //     ),
              border),
    );
  }
}
