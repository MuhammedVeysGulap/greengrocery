import 'package:flutter/material.dart';
import 'package:flutter_application_greengrocery/views/greengrocery_detail_page_view.dart';

import '../constants/greengrocery_const.dart';

class ItemsCard extends StatelessWidget {
  const ItemsCard({super.key, required this.text, required this.image});
  final String text;
  final Widget image;
  final String discountvalue = '\$12';
  final String normalvalue = '\$16.00';
  final String kg = '1kg';
  final double textsize = 12;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4.8,
      width: MediaQuery.of(context).size.width / 2.5,
      decoration: BoxDecoration(
          color: GreenGroceryConst.colorWhite,
          border: Border.all(width: 1),
          borderRadius: GreenGroceryConst.borderRadiusCircular10),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            image,
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            GreenGroceryConst.sizeboxHeight5,
            Row(
              children: [
                Text(
                  kg,
                  style: TextStyle(
                      fontSize: 17,
                      color: GreenGroceryConst.colorBlack,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      discountvalue,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      normalvalue,
                      style: TextStyle(
                          color: GreenGroceryConst.colorRed,
                          decorationColor: GreenGroceryConst.colorBlack,
                          decoration: TextDecoration.lineThrough,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationThickness: 2,
                          fontSize: textsize),
                    )
                  ],
                ),
                CircleAvatar(
                  backgroundColor: GreenGroceryConst.colorGreen,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => DetailPage(),
                      ));
                    },
                    icon: Icon(
                      Icons.add,
                      color: GreenGroceryConst.colorWhite,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
