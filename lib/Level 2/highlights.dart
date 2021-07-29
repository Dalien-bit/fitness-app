import 'package:flutter/material.dart';

class Highlights extends StatelessWidget {
  static double availablaSpaceHorizontal = 0;
  static double availablaSpaceVertical = 0;

  Highlights(double width, double height) {
    availablaSpaceHorizontal = width;
    availablaSpaceVertical = height;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Streaks',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Image.asset(
              'assets/images/fire.jpg',
              height: availablaSpaceVertical * 0.30,
              width: availablaSpaceHorizontal * 0.16,
            ),
            Text('23')
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Calories Burnt',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.bolt,
              size: 45,
            ),
            Text('299'),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Time',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.access_time_filled_sharp,
              size: 45,
            ),
            Text('90'),
          ],
        ),
      ],
    );
  }
}
