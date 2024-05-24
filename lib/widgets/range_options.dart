import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xffF1F1F1), width: 1),
      ),
      child: Row(
        children: [
           Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
            angle: (270 * 22 / 7) / 180,
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xff064061),
            ),
          ),
        ],
      ),
    );
  }
}
