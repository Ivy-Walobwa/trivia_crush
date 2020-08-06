import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trivia_crush/constant.dart';
import 'package:trivia_crush/components/overlay_card.dart';
import 'package:trivia_crush/components/quiz_categories.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: kLightblueBackgroundColor,
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height:  screenHeight * .30,
                    decoration: BoxDecoration(
                      color: blackGreyColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(screenHeight * .02),
                          child: CircleAvatar(
                            radius: 25.0,
                            backgroundImage: AssetImage('images/profile.jpg'),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only( top: screenHeight * .04),
                          child: Text(
                            'Ivy Walobwa',
                            style: kQuizTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  QuizCategories(screenHeight: screenHeight),
                ],
              ),
              OverlayCard()
            ],
          ),
        ));
  }
}


