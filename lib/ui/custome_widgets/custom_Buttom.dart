import 'package:first_ui/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final text;
  final onPressd;

  CustomButton({this.text, required this.onPressd});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressd,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 9),
        height: 46,
        decoration: BoxDecoration(
            color: blueThemColor,
            borderRadius: BorderRadius.circular(23),
            boxShadow: [
              BoxShadow(
                color: Color(0x663065D7),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Text(
              '$text ',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Image.asset(
              'assets/images/roundicon.png',
              height: 29,
              width: 29,
            ),
          ],
        ),
      ),
    );
  }
}
