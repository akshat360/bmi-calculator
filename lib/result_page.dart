import 'package:flutter/material.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
  final String bmi, result, message;
  ResultPage(
      {@required this.bmi, @required this.result, @required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Result",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 50),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(25),
              width: double.infinity,
              color: kActiveColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(result,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.green)),
                  Text(bmi,
                      style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 100)),
                  Column(
                    children: <Widget>[
                      Text("Normal BMI Range",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: kGrayColor)),
                      Text("18,5 -25 kg/m2",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20)),
                    ],
                  ),
                  Text(message,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      )),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  "Re-Calculate",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              color: kPinkColor,
              height: 50,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}
