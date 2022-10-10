import 'package:flutter/material.dart';

import '../constants/greengrocery_const.dart';

class ReleatedItemCard extends StatelessWidget {
  const ReleatedItemCard({super.key, required this.widget});
  final Widget widget;
  final double height = 10;
  final double width = 5;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / height,
      width: MediaQuery.of(context).size.width / width,
      decoration: BoxDecoration(
          color: GreenGroceryConst.colorWhite,
          borderRadius: GreenGroceryConst.borderRadiusCircular10,
          border: Border.all(width: 1, color: GreenGroceryConst.colorBlack)),
      child: widget,
    );
  }
}
