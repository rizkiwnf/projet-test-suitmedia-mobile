
import 'package:flutter/material.dart';

class TextName extends StatelessWidget {
  const TextName(
      {Key? key,
        required this.hintText,
        required this.sizeText,
        required this.weightText,
        required this.marginText,
      })
      : super(key: key);
  final String hintText;
  final FontWeight weightText;
  final EdgeInsetsGeometry marginText;
  final double sizeText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginText,
      child: Text(
        hintText,
        style: TextStyle(
          fontWeight: weightText,
            fontSize: sizeText
        ),
      )
    );
  }
}