import 'package:flutter/material.dart';

class TextBody extends StatelessWidget {
  const TextBody({super.key, required this.text, required this.color});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .bodyText2
          ?.copyWith(fontWeight: FontWeight.bold, color: color),
    );
  }
}
