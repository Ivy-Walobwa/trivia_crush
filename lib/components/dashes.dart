import 'package:flutter/material.dart';

class Dashes extends StatelessWidget {
  Dashes({this.dashColor});
  final Color dashColor;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(right: screenWidth * .01),
      child: SizedBox(
        width: screenWidth * .035,
        height: 2.0,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: dashColor,
          ),
        ),
      ),
    );
  }
}
