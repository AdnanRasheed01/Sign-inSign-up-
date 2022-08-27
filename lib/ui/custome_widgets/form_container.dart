import 'package:flutter/material.dart';

class Form_Container extends StatelessWidget {
  final child;
  Form_Container({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 17),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ]),
      child: this.child,
    );
  }
}
