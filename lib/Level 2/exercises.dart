import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../data/exercisedata.dart';
import '../Level 3/exercise.dart' as route;
import '../Level 3/exercise.dart';
// import '../database_service.dart';

class Exercises extends StatelessWidget {
  final double myHeight;
  final double myWidth;
  Exercises(this.myHeight, this.myWidth);

  @override
  @override
  Widget build(BuildContext context) {
    //extracting the arguments
    return ListView.builder(
      itemCount: listOfExercises.length,
      padding: const EdgeInsets.all(4),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 100,
          child: Card(
            elevation: 10,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Checkbox(
                    value: listOfExercises[index].isDone,
                    onChanged: (x) => {},
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    ' ' + listOfExercises[index].name,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.timer,
                        size: 35,
                      ),
                      Text(listOfExercises[index].duration.toString()),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: IconButton(
                          iconSize: 30,
                          icon: const Icon(Icons.arrow_forward),
                          onPressed: () async => {
                            // if (await DatabaseService.instance
                            //         .readRecord(listOfExercises[index].id) ==
                            //     null) await DatabaseService.instance.insert(myRecord[0]),
                              
                            Navigator.pushNamed(
                              context,
                              route.Exercise.routeName,
                              arguments:
                                  ScreenArguments(listOfExercises[index].id),
                            )
                          },
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Let\'s Go',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
