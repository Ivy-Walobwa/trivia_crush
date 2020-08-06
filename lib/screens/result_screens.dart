import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trivia_crush/constant.dart';
import 'package:trivia_crush/components/blue_button.dart';
import 'package:trivia_crush/components/coins.dart';
import 'package:trivia_crush/components/score.dart';
import 'package:trivia_crush/components/trophy_image.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kDarkBlueColor,
      body: SafeArea(
       child: Container(
         padding: EdgeInsets.all(20.0),
        width: screenWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/ribbons.png',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(
                0.2,
              ),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Quiz Result',
              style: kCongratsTextStyle,
            ),
            TrophyImage(screenHeight: screenHeight, screenWidth: screenWidth),
            Text(
              'Congratulations!',
              style: kCongratsTextStyle,
            ),
            Text(
              'Congratulations! You\'ve won yourself a gold trophy. ',
              style: kQuizTextStyle,
              textAlign: TextAlign.center,
            ),
            Text(
              'YOUR SCORE',
              style: kQuizTitleStyle,
            ),
            Score(),
            Text(
              'EARNED COINS',
              style: kQuizTitleStyle,
            ),
            Coins(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
            FlatButton.icon(
            color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              onPressed: () {},
              icon: Icon(Icons.share),
              label: Text(
                'Share Results',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
                BlueButton(
                  width: screenWidth * .09,
                  height: screenWidth * .04,
                  buttonText: 'Retake Quiz',
                  onPressed: (){
                    Navigator.pushNamed(context, '/result');
                  },
                ),
              ],
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/',);
              },
              child: Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,),
                  color: kGreyBlueColor,
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Icon(Icons.clear,color: Colors.white,),
              ),
            ),
          ],
        ),
      )),
    );
  }
}






