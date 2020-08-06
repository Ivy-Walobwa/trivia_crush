import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trivia_crush/components/blue_button.dart';
import 'package:trivia_crush/constant.dart';
import 'package:trivia_crush/components/progress_dashes.dart';
import 'package:trivia_crush/components/answers_list.dart';
import 'package:trivia_crush/components/question.dart';
import 'package:trivia_crush/components/question_number.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kDarkBlueColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: screenHeight * .04,
            left: screenWidth*.04,
            right:screenWidth*.04,
            bottom: screenHeight * .02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Mathematics Quiz',
                style: kQuizTitleStyle,
              ),
              QuestionNumber(screenWidth: screenWidth),
              SizedBox(
                height: screenHeight * .03,
              ),
              ProgressDashes(),
              SizedBox(
                height: screenHeight * .05,
              ),
              Question(),
              AnswersList(screenHeight: screenHeight),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.power_settings_new,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Quit Quiz',
                      style: kQuizTextStyle,
                    ),
                  ),
                  BlueButton(
                    width: screenWidth*.15,
                    height:screenHeight * .02,
                    buttonText: 'Next',
                    onPressed: (){},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}






