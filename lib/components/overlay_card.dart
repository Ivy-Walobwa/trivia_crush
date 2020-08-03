import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OverlayCard extends StatelessWidget {
  const OverlayCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * .12,
          right: 20.0,
          left: 20.0),
      child: Container(
        height: MediaQuery.of(context).size.height * .30,
        width: MediaQuery.of(context).size.width,
        child: Card(
          color: Colors.black,
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/question.png',),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(MediaQuery.of(context).size.height * .03),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                      'Play & Win',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.w900,
                        ),
                  ),
                      Text(
                        'Play and stand a chance to win amazing prizes',
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
