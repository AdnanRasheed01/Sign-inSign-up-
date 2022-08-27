import 'dart:ui';

import 'package:first_ui/core/constant/text_style.dart';
import 'package:first_ui/ui/ui_screen/login_screen.dart';
import 'package:first_ui/ui/ui_screen/register_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(height: 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/connect_logo.png'),
                    height: 88,
                    width: 88,
                    fit: BoxFit.contain,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('CSE', style: boldBlueTextStyle),
                      Text('connect.', style: regularBlackTextStyle),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text('Powerd by '),
                  Image.asset(
                    'assets/images/antonx_logo.png',
                    height: 55,
                    width: 134,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 36),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
