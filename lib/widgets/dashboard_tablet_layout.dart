import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

import 'dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: DashBoardMobileLayout()),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}

