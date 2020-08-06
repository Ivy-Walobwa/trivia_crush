import 'package:flutter/material.dart';
import 'package:trivia_crush/constant.dart';

class QuestionNumber extends StatelessWidget {
  const QuestionNumber({
    Key key,
    @required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.ideographic,
      children: <Widget>[
        Text(
          'Question',
          style: kQuestionTitleTextStyle,
        ),
        SizedBox(
          width: screenWidth*.04,
        ),
        Text(
          '06',
          style: kCongratsTextStyle,
        ),
        Text(
          '/20',
          style: kQuizTitleStyle,
        ),
      ],
    );
  }
}