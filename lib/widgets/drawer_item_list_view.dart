import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> items = const [
    DrawerItemModel(imagePath: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(
        imagePath: Assets.imagesMyTrsndaction, title: 'My Transaction'),
    DrawerItemModel(imagePath: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(imagePath: Assets.imagesWallet, title: 'Wallet Account'),
    DrawerItemModel(
        imagePath: Assets.imagesMyInvestments, title: 'My Investments'),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: DrawerItem(
            drawerItemModel: items[index],
            isActive: activeIndex == index,
          )),
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
    );
  }
}
