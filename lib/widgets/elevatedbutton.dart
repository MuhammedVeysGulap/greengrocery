import 'package:flutter/material.dart';
import 'package:flutter_application_greengrocery/constants/greengrocery_const.dart';

final double sizedboxHeight = 20;

class ElevatedButtonGreen extends StatelessWidget {
  const ElevatedButtonGreen({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox(
          height: MediaQuery.of(context).size.height / sizedboxHeight,
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: GreenGroceryConst.borderRadiusCircular50)),
            onPressed: onPressed,
            child: Text(text),
          )),
    );
  }
}
