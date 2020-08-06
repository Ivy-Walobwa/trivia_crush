import 'package:flutter/material.dart';
import 'package:trivia_crush/constant.dart';

class Question extends StatelessWidget {
  const Question({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'The graphs of the two linear equations ax+by=c and bx-ay=c, where a, b, and c are all not equal to zero.',
      style: kQuestionTextStyle,
    );
  }
}