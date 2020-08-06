import 'package:flutter/material.dart';
import 'answer.dart';

class AnswersList extends StatelessWidget {
  const AnswersList({
    Key key,
    @required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: screenHeight * .08, bottom: screenHeight * .16),
      child: Column(
        children: <Widget>[
          Answer(
            isChecked: false,
            answer: 'Are Parallel',
          ),
          Answer(
            answer: 'Perpendicular',
            isChecked: true,
          ),
          Answer(
            isChecked: false,
            answer: 'Intersect at two points',
          ),
          Answer(
            isChecked: false,
            answer: 'Intersect at one point',
          ),
        ],
      ),
    );
  }
}
