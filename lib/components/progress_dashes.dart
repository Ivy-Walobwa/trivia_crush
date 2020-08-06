import 'package:flutter/material.dart';
import 'dashes.dart';
import 'package:trivia_crush/constant.dart';

class ProgressDashes extends StatelessWidget {
  const ProgressDashes({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Dashes(
          dashColor: Colors.greenAccent,
        ),
        Dashes(
          dashColor: Colors.greenAccent,
        ),
        Dashes(
          dashColor: Colors.greenAccent,
        ),
        Dashes(
          dashColor: Colors.greenAccent,
        ),
        Dashes(
          dashColor: Colors.redAccent,
        ),
        Dashes(
          dashColor: Colors.white,
        ),
        Dashes(
          dashColor: kGreyBlueColor,
        ),
        Dashes(
          dashColor: kGreyBlueColor,
        ),
        Dashes(
          dashColor: kGreyBlueColor,
        ),
        Dashes(
          dashColor: kGreyBlueColor,
        ),
        Dashes(
          dashColor: kGreyBlueColor,
        ),
        Dashes(
          dashColor: kGreyBlueColor,
        ),
        Dashes(
          dashColor: kGreyBlueColor,
        ),
        Dashes(
          dashColor: kGreyBlueColor,
        ),
        Dashes(
          dashColor: kGreyBlueColor,
        ),
        Dashes(
          dashColor: kGreyBlueColor,
        ),
        Dashes(
          dashColor: kGreyBlueColor,
        ),
        Dashes(
          dashColor: kGreyBlueColor,
        ),
        Dashes(
          dashColor: kGreyBlueColor,
        ),
        Dashes(
          dashColor: kGreyBlueColor,
        ),
      ],
    );
  }
}
