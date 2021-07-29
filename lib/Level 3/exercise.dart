import 'package:flutter/material.dart';
import 'timer_stuff.dart';
import '../data/exercisedata.dart';
import 'package:flutter/widgets.dart';

class ScreenArguments {
  final int id;
  ScreenArguments(this.id);
}

class Exercise extends StatelessWidget {
  static const routeName = '/exercise';
  @override
  Widget build(BuildContext context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);

    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    final AppBar _appBar2 =
        AppBar(title: Text(listOfExercises[args.id].name));
    double heightLeft =
        (_mediaQueryData.size.height - _appBar2.preferredSize.height);
    return Scaffold(
      appBar: _appBar2,
      body: Column(
        children: [
          Image.asset(
            listOfExercises[args.id].imageLocation,
            height: heightLeft * 0.17,
            width: _mediaQueryData.size.width,
          ),
          Expanded(
            child: Card(
              color: Colors.blue[50],
              margin: EdgeInsets.all(5),
              shadowColor: Colors.indigo.shade800,
              elevation: 10,
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description :-)',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        listOfExercises[args.id].description,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemCount: listOfExercises[args.id].steps.length,
              itemBuilder: (BuildContext context, int index1) {
                return Container(
                  child: Container(
                    height: heightLeft / 10,
                    child: Card(
                      elevation: 5,
                      child: Text(
                        '${index1 + 1}' +
                            ') ' +
                            listOfExercises[args.id].steps[index1],
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.deepPurple[800],
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.pushNamed(
            context,
            TimerStuff.routeName,
            arguments: ScreenArguments2(
              args.id.toInt(),
            ),
          );
        },
        label: const Text('Start'),
        icon: const Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
