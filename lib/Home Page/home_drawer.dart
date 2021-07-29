import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.indigo[400],
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: FittedBox(
                    child: Text(
                      'Preferences',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                  flex: 4,
                )
              ],
            ),
          ),
          Card(
            child: TextButton(
              onPressed: () => {},
              child: Row(
                children: [
                  Text('Beginner'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
