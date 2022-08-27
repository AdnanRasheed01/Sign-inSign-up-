import 'package:first_ui/core/constant/text_style.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final text;
  CustomHeader(this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/images/cse_connect_logo.png',
          height: 45,
          width: 147,
          fit: BoxFit.contain,
        ),
        Text(
          '$text',
          style: greyBoldTextStyle,
        )
      ],
    );
  }
}
