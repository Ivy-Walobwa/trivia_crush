import 'package:flutter/material.dart';
import 'package:trivia_crush/constant.dart';

class BlueButton extends StatelessWidget {
  BlueButton({this.width, this.height, this.buttonText, this.onPressed});

  final double width;
  final double height;
  final String buttonText;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding:
      EdgeInsets.symmetric(vertical: height, horizontal:width),
      color: kBlueButtonColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: kQuizTextStyle,
      ),
    );
  }
}
