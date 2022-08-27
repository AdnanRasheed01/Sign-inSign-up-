import 'package:first_ui/core/constant/colors.dart';
import 'package:flutter/material.dart';

final boldBlueTextStyle = TextStyle(
    fontFamily: 'poppins',
    fontSize: 48,
    color: blueThemColor,
    fontWeight: FontWeight.w700);

final regularBlackTextStyle = TextStyle(
  fontFamily: 'poppins',
  fontSize: 48,
  color: Colors.black,
);

final greyBoldTextStyle = boldBlueTextStyle.copyWith(
  fontSize: 25,
  color: darkGrayColor,
);
final boldWhiteTextStyle =
    boldBlueTextStyle.copyWith(fontSize: 25, color: Colors.white);
final userNameTextStyle = TextStyle(
    fontFamily: 'poppins',
    fontSize: 12,
    color: Colors.white,
    fontWeight: FontWeight.w600);
