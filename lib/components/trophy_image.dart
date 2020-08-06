import 'package:flutter/material.dart';

class TrophyImage extends StatelessWidget {
  const TrophyImage({
    Key key,
    @required this.screenHeight,
    @required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset('images/trophy.png',height: screenHeight * .35,),
        Container(
          padding: EdgeInsets.all(2.0),
          margin: EdgeInsets.only(
              top: screenHeight * .06,
              left: screenWidth * .185),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage('images/profile.jpg'),
          ),
        ),
        Container(
            margin: EdgeInsets.only(
                top: screenHeight * .27,
                left: screenWidth * .195),
            child: Text(
              'Winner',
              style: TextStyle(color: Colors.black45, fontSize: 22.0, fontWeight: FontWeight.w500),
            ))
      ],
    );
  }
}
