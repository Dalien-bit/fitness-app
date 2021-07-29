import 'package:flutter/material.dart';
import 'home_drawer.dart';
import '../Level 3/timer_stuff.dart';
import '../Level 2/exercises.dart';
import '../Level 2/highlights.dart';

class Home extends StatelessWidget {

  static const routeName = '/home';
  final AppBar appBar = AppBar(
    centerTitle: true,
    elevation: 30,
    title: Text(
      'Silver',
      style: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.grey.shade400,
        fontStyle: FontStyle.italic,
        height: 1,
        letterSpacing: 2,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double myHeight =
        (mediaQueryData.size.height - appBar.preferredSize.height) * 0.47;
    double myWidth = mediaQueryData.size.width;
    return Scaffold(
      appBar: appBar,
      drawer: HomeDrawer(),
      body: ListView(
        children: <Widget>[
          Container(
            height: (mediaQueryData.size.height - appBar.preferredSize.height) *
                0.18,
            width: mediaQueryData.size.width,
            child: Card(
              child: Highlights(
                  mediaQueryData.size.width,
                  (mediaQueryData.size.height - appBar.preferredSize.height) *
                      0.18),
            ),
          ),
          Container(
            width: mediaQueryData.size.width,
            height: (mediaQueryData.size.height - appBar.preferredSize.height) *
                0.25,
            child: Card(
              child: TextButton(
                onPressed: () => {
                  
                  
                },
                child: Text('timer'),
              ),
            ),
          ),
          Container(
            color: Colors.indigo.shade500,
            padding: EdgeInsets.all(4),
            height: (mediaQueryData.size.height - appBar.preferredSize.height) *
                0.10,
            width: mediaQueryData.size.width,
            child: Card(
              color: Colors.blue[100],
              elevation: 10,
              margin: EdgeInsets.all(5),
              child: Text(
                'Let\'s Exercise',
                style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Georgia',
                ),
              ),
            ),
          ),
          Container(
            color: Colors.blue[100],
            width: mediaQueryData.size.width,
            height: (mediaQueryData.size.height - appBar.preferredSize.height) *
                0.40,
            child: Exercises(myHeight, myWidth),
          ),
        ],
      ),
    );
  }
}
