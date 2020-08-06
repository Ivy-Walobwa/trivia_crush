import 'package:flutter/material.dart';
import 'package:trivia_crush/constant.dart';

class Coins extends StatelessWidget {
  const Coins({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 30.0,
          backgroundImage: AssetImage('images/coins.png'),
        ),
        Text(
          '500',
          style: kCongratsTextStyle,
        )
      ],
    );
  }
}