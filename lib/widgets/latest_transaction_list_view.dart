import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  final List<UserInfoModel> items = const [
    UserInfoModel(
        imagePath: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        imagePath: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        imagePath: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListTile(
                  userInfoModel: e,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
