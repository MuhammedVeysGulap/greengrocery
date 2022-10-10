import 'package:flutter/material.dart';
import 'package:flutter_application_greengrocery/constants/greengrocery_const.dart';
import 'package:flutter_application_greengrocery/widgets/items_card.dart';
import 'package:flutter_application_greengrocery/widgets/text_body.dart';
import 'package:flutter_application_greengrocery/widgets/text_subtitle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final double cardHeight = 4.5;
  final double elevatedButtonHeight = 23;
  final double elevatedButtonWidth = 3;
  final double imageWidth = 75;
  final double imageHeight = 75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_cart_outlined),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: _bottomNavigationBar(),
      backgroundColor: GreenGroceryConst.colorWhite,
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          color: GreenGroceryConst.colorGrey,
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _rowAppBar(),
                  GreenGroceryConst.sizeboxHeight20,
                  _card(context),
                  _popularItems(),
                  _newItems()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding _newItems() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextSubtitle(text: GreenGroceryConst.newitems),
              TextBody(
                  text: GreenGroceryConst.seeall,
                  color: GreenGroceryConst.colorGreen)
            ],
          ),
          GreenGroceryConst.sizeboxHeight15,
          GreenGroceryConst.sizeboxHeight10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemsCard(
                  text: GreenGroceryConst.tomatoes,
                  image: Image.asset(
                    GreenGroceryConst.imagesTomatoes,
                    height: imageHeight,
                    width: imageWidth,
                  )),
              GreenGroceryConst.sizeboxWidth10,
              ItemsCard(
                  text: GreenGroceryConst.eggplant,
                  image: Image.asset(
                    GreenGroceryConst.imagesEggplant,
                    height: imageHeight,
                    width: imageWidth,
                  ))
            ],
          ),
          GreenGroceryConst.sizeboxHeight10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemsCard(
                  text: GreenGroceryConst.lettuce,
                  image: Image.asset(
                    GreenGroceryConst.imagesLettuce,
                    height: imageHeight,
                    width: imageWidth,
                  )),
              GreenGroceryConst.sizeboxWidth10,
              ItemsCard(
                  text: GreenGroceryConst.onion,
                  image: Image.asset(
                    GreenGroceryConst.imagesOnion,
                    height: imageHeight,
                    width: imageWidth,
                  ))
            ],
          ),
          GreenGroceryConst.sizeboxHeight10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemsCard(
                  text: GreenGroceryConst.pepper,
                  image: Image.asset(
                    GreenGroceryConst.imagesPepper,
                    height: imageHeight,
                    width: imageWidth,
                  )),
              GreenGroceryConst.sizeboxWidth10,
              ItemsCard(
                  text: GreenGroceryConst.tomatoes,
                  image: Image.asset(
                    GreenGroceryConst.imagesTomatoes,
                    height: imageHeight,
                    width: imageWidth,
                  )),
            ],
          ),
          GreenGroceryConst.sizeboxHeight10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemsCard(
                  text: GreenGroceryConst.radish,
                  image: Image.asset(
                    GreenGroceryConst.imagesRadish,
                    height: imageHeight,
                    width: imageWidth,
                  )),
              GreenGroceryConst.sizeboxWidth10,
              ItemsCard(
                  text: GreenGroceryConst.potatoes,
                  image: Image.asset(
                    GreenGroceryConst.imagesPotatoes,
                    height: imageHeight,
                    width: imageWidth,
                  )),
            ],
          ),
        ],
      ),
    );
  }

  Padding _popularItems() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextSubtitle(text: GreenGroceryConst.popularitems),
              TextBody(
                  text: GreenGroceryConst.seeall,
                  color: GreenGroceryConst.colorGreen)
            ],
          ),
          GreenGroceryConst.sizeboxHeight15,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemsCard(
                  text: GreenGroceryConst.broccoli,
                  image: Image.asset(
                    GreenGroceryConst.imagesBroccoli,
                    height: 75,
                    width: 75,
                  )),
              GreenGroceryConst.sizeboxWidth10,
              ItemsCard(
                  text: GreenGroceryConst.cauliflower,
                  image: Image.asset(
                    GreenGroceryConst.imagesCauliflower,
                    height: 75,
                    width: 75,
                  ))
            ],
          )
        ],
      ),
    );
  }

  Padding _card(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / cardHeight,
        width: MediaQuery.of(context).size.width,
        child: ClipRRect(
          borderRadius: GreenGroceryConst.borderRadiusCircular30,
          child: Card(
            color: GreenGroceryConst.colorCard,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        GreenGroceryConst.cardTitle,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      GreenGroceryConst.sizeboxHeight15,
                      SizedBox(
                        height: MediaQuery.of(context).size.height /
                            elevatedButtonHeight,
                        width: MediaQuery.of(context).size.width /
                            elevatedButtonWidth,
                        child: ClipRRect(
                          borderRadius:
                              GreenGroceryConst.borderRadiusCircular50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: GreenGroceryConst.colorWhite),
                            onPressed: () {},
                            child: Text(
                              GreenGroceryConst.cardelevatedbuttontext,
                              style: TextStyle(
                                  color: GreenGroceryConst.colorGreen),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(GreenGroceryConst.imagesCard)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding _rowAppBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.list,
                        color: GreenGroceryConst.colorBlack,
                      ))),
              GreenGroceryConst.sizeboxWidth10,
              Text(GreenGroceryConst.textlocation),
              GreenGroceryConst.sizeboxWidth10,
              Icon(Icons.keyboard_arrow_down_sharp)
            ],
          ),
          CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: GreenGroceryConst.colorBlack,
                  ))),
        ],
      ),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.support_agent_outlined), label: ''),
      ],
    );
  }
}
