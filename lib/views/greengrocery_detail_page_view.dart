import 'package:flutter/material.dart';
import 'package:flutter_application_greengrocery/constants/greengrocery_const.dart';
import 'package:flutter_application_greengrocery/views/greengrocery_home_page_view.dart';
import 'package:flutter_application_greengrocery/widgets/elevatedbutton.dart';
import 'package:flutter_application_greengrocery/widgets/releated_item_card.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});
  final String discountvalue = '\$12';
  final String normalvalue = '\$16.00';
  final String kg = '1kg';
  final String description = 'Description';
  final String releateditem = 'Releated Item';
  final double imageWidth = 200;
  final double imageHeight = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GreenGroceryConst.colorWhite,
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          color: GreenGroceryConst.colorGrey,
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 8, right: 8),
            child: Column(
              children: [
                _appbar(context),
                GreenGroceryConst.sizeboxHeight40,
                Image.asset(
                  GreenGroceryConst.imagesBroccoli,
                  height: imageHeight,
                  width: imageWidth,
                ),
                GreenGroceryConst.sizeboxHeight20,
                _broccoliTextsAndValue(context),
                _releatedItems(),
                GreenGroceryConst.sizeboxHeight40,
                ElevatedButtonGreen(
                    text: GreenGroceryConst.textsecondtelevatedbutton,
                    onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }

  SingleChildScrollView _releatedItems() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ReleatedItemCard(
              widget: Image.asset(GreenGroceryConst.imagesBroccoli)),
          GreenGroceryConst.sizeboxWidth10,
          ReleatedItemCard(
              widget: Image.asset(GreenGroceryConst.imagesCauliflower)),
          GreenGroceryConst.sizeboxWidth10,
          ReleatedItemCard(
              widget: Image.asset(GreenGroceryConst.imagesEggplant)),
          GreenGroceryConst.sizeboxWidth10,
          ReleatedItemCard(
              widget: Image.asset(GreenGroceryConst.imagesLettuce)),
          GreenGroceryConst.sizeboxWidth10,
          ReleatedItemCard(widget: Image.asset(GreenGroceryConst.imagesOnion)),
          GreenGroceryConst.sizeboxWidth10,
          ReleatedItemCard(widget: Image.asset(GreenGroceryConst.imagesPepper)),
          GreenGroceryConst.sizeboxWidth10,
          ReleatedItemCard(
              widget: Image.asset(GreenGroceryConst.imagesPotatoes)),
          GreenGroceryConst.sizeboxWidth10,
          ReleatedItemCard(widget: Image.asset(GreenGroceryConst.imagesRadish)),
          GreenGroceryConst.sizeboxWidth10,
          ReleatedItemCard(
              widget: Image.asset(GreenGroceryConst.imagesTomatoes)),
        ],
      ),
    );
  }

  Column _broccoliTextsAndValue(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              GreenGroceryConst.broccoli,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontWeight: FontWeight.bold),
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
                GreenGroceryConst.sizeboxWidth10,
                Text(
                  normalvalue,
                  style: TextStyle(
                      color: GreenGroceryConst.colorRed,
                      decorationColor: GreenGroceryConst.colorBlack,
                      decoration: TextDecoration.lineThrough,
                      decorationStyle: TextDecorationStyle.solid,
                      decorationThickness: 2,
                      fontSize: 10),
                )
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: Colors.green.shade200,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove,
                      color: GreenGroceryConst.colorWhite,
                      size: 10,
                    ),
                  ),
                ),
                GreenGroceryConst.sizeboxWidth10,
                Text(kg,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          color: GreenGroceryConst.colorBlack,
                          fontWeight: FontWeight.bold,
                        )),
                GreenGroceryConst.sizeboxWidth10,
                CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: GreenGroceryConst.colorGreen,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: GreenGroceryConst.colorWhite,
                      size: 10,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        Row(
          children: [
            Text(
              description,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: GreenGroceryConst.colorBlack,
                    fontWeight: FontWeight.bold,
                  ),
            )
          ],
        ),
        Text(GreenGroceryConst.lorem),
        GreenGroceryConst.sizeboxHeight20,
        Row(
          children: [
            Text(
              releateditem,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: GreenGroceryConst.colorBlack,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        GreenGroceryConst.sizeboxHeight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [],
        )
      ],
    );
  }

  Row _appbar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: GreenGroceryConst.colorWhite,
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Icon(
                Icons.chevron_left_outlined,
                color: GreenGroceryConst.colorBlack,
              )),
        ),
        CircleAvatar(
          backgroundColor: GreenGroceryConst.colorWhite,
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: GreenGroceryConst.colorBlack,
              )),
        ),
      ],
    );
  }
}
