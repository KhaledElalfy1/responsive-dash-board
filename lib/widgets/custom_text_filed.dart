import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle:
            AppStyles.styleRegular16(context).copyWith(color: const Color(0xffAAAAAA)),
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        border: borderDecoration(),
        enabledBorder: borderDecoration(),
        focusedBorder: borderDecoration(),
      ),
    );
  }

  OutlineInputBorder borderDecoration() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(12),
    );
  }
}
