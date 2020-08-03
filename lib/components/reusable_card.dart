import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 10.0),
        padding: EdgeInsets.symmetric(vertical:  MediaQuery.of(context).size.height * .03, horizontal: MediaQuery.of(context).size.height * .01),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.beach_access,
              size: MediaQuery.of(context).size.height * .08,
              color: Colors.orange,
            ),
            SizedBox(height: 10.0,),
            Text(
              'Mathematics',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}