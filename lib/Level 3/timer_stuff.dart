import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:silver/Home%20Page/home.dart';
import '../data/exercisedata.dart';
import '../data/record.dart';
import '../database_service.dart';


class ScreenArguments2 {
  final int id;
  ScreenArguments2(this.id);
}

class TimerStuff extends StatefulWidget {
  static const routeName = '/timer_stuff';

  @override
  _TimerStuffState createState() => _TimerStuffState();
}

class _TimerStuffState extends State<TimerStuff> {
  late AnimationController controller;

  
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments2;
    final durationOfExercise = listOfExercises[args.id].duration;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 30,
        title: Text(
          '',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade400,
            fontStyle: FontStyle.italic,
            height: 1,
            letterSpacing: 2,
          ),
        ),
      ),
      body: Column(
        children: [
          
          Center(
            child: TweenAnimationBuilder<Duration>(
              duration: Duration(minutes: durationOfExercise),
              tween: Tween(
                begin: Duration(minutes: durationOfExercise),
                end: Duration.zero,
              ),
              onEnd:  () async {
                print('Timer ended');
                
                listOfExercises[args.id].isDone = true;

                Navigator.pushNamed(
                  context,
                  Home.routeName,
                );
              },
              builder: (BuildContext context, Duration value, Widget? child) {
                final minutes = value.inMinutes;
                final seconds = value.inSeconds % 60;
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    '$minutes:$seconds',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
