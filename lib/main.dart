import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Level 3/exercise.dart';
import 'Level 3/timer_stuff.dart';
import 'Home Page/home.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  @override
  

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "silver",
      theme: ThemeData(
        primaryColor: Colors.indigo.shade800,
        accentColor: Colors.cyan[600],
        fontFamily: 'Georgia',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
      routes: {
        Home.routeName: (context) => Home(),
        Exercise.routeName: (context) => Exercise(),
        TimerStuff.routeName: (context) => TimerStuff(),
      },
    );
  }
}
