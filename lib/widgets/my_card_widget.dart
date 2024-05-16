import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesCart),
          ),
          color: const Color(0xff5FBEF3),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: const Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20,
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Text(
              '0918 8124 0042 8129',
              style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),
            ),
            Text(
              '12/20 - 124',
              style: AppStyles.styleRegular16.copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
