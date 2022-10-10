import 'package:flutter/material.dart';
import 'package:flutter_application_greengrocery/constants/greengrocery_const.dart';
import 'package:flutter_application_greengrocery/views/greengrocery_home_page_view.dart';
import 'package:flutter_application_greengrocery/widgets/elevatedbutton.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});
  final double imageInfoHeight = 300;
  final double imageInfoWidth = 300;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: GreenGroceryConst.colorWhite,
        body: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: GreenGroceryConst.colorGreen,
            child: Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Column(
                children: [
                  Image.asset(
                    GreenGroceryConst.imagesInfo,
                    height: imageInfoHeight,
                    width: imageInfoWidth,
                  ),
                  Text(
                    GreenGroceryConst.textInfotitle,
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: GreenGroceryConst.colorWhite),
                    textAlign: TextAlign.center,
                  ),
                  GreenGroceryConst.sizeboxHeight15,
                  Text(
                    GreenGroceryConst.textInfoSubtitle,
                    style: Theme.of(context).textTheme.button?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: GreenGroceryConst.colorWhite),
                    textAlign: TextAlign.center,
                  ),
                  GreenGroceryConst.sizeboxHeight180,
                  ElevatedButtonGreen(
                    text: GreenGroceryConst.textfirstelevatedbutton,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
