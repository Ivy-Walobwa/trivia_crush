import 'package:flutter/material.dart';
import 'package:trivia_crush/constant.dart';

class Score extends StatelessWidget {
  const Score({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '2 0 ',
          style: kGreenScore,
        ),
        Text(
          '/ 2 0',
          style: kCongratsTextStyle,
        ),
      ],
    );
  }
}
