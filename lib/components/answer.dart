import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trivia_crush/constant.dart';
import 'package:rounded_checkbox_list_tile/rounded_checkbox_list_tile.dart';

class Answer extends StatelessWidget {
 Answer({this.answer, this.isChecked});

  final String answer;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(bottom: screenHeight * .02),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            15.0,
          ),
          border: Border.all(color: isChecked ? Colors.greenAccent : Colors.white)),
      child: RoundedCheckboxListTile(
        value: isChecked,
        onChanged: (newValue) {},
        title: Text(
          answer,
          style: isChecked ? kCorrectQuizTextStyle : kQuizTextStyle,
        ),
        checkboxEdgeRadius: Radius.circular(
          10.0,
        ),
        activeColor: Colors.greenAccent,
      ),
    );
  }
}