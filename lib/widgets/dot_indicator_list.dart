import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/widgets/dot_indicator.dart';

class DotIndicatorList extends StatelessWidget {
  const DotIndicatorList({super.key, required this.currentPage});
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) =>  Padding(
                padding:const EdgeInsets.only(right: 8.0),
                child: DotIndicator(isActive: index==currentPage),
              )),
    );
  }
}
