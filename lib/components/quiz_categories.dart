import 'package:flutter/material.dart';
import 'package:trivia_crush/constant.dart';
import 'reusable_card.dart';

class QuizCategories extends StatelessWidget {
  const QuizCategories({
    Key key,
    @required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0,),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top:  screenHeight* .15,
              bottom:screenHeight * .03,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Top Quiz Categories',
                  style: kCategoriesTitleStyle,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text('View All'),
                  color: kLightBlueButtonColor,
                  textColor: kBlueButtonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: screenHeight * .03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ReusableCard(),
                    ReusableCard(),
                    ReusableCard(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ReusableCard(),
                  ReusableCard(),
                  ReusableCard(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}