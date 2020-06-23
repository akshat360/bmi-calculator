import 'package:flutter/material.dart';
import 'constants.dart';

class ReIcon extends StatelessWidget {
  ReIcon({this.icon, this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 60),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(color: kGrayColor),
        )
      ],
    );
  }
}
