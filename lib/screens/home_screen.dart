import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trivia_crush/constant.dart';
import 'package:trivia_crush/components/reusable_card.dart';
import 'package:trivia_crush/components/overlay_card.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: lightblueColor,
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height:  screenHeight * .30,
                    decoration: BoxDecoration(
                      color: blackColor,
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
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
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
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Text('View All'),
                                color: Color(0xFFD5F0F6),
                                textColor: Color(0xFF3EDAF6),
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
                  ),
                ],
              ),
              OverlayCard()
            ],
          ),
        ));
  }
}
