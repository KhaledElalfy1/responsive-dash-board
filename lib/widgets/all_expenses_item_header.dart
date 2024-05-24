import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.imagePath, this.backGround, this.iconColor});
  final String imagePath;
  final Color? backGround, iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: backGround ?? const Color(0xffFAFAFA),
            child: SvgPicture.asset(
              imagePath,
              colorFilter: ColorFilter.mode(
                  iconColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: backGround == null ? const Color(0xff064061) : Colors.white,
        )
      ],
    );
  }
}
