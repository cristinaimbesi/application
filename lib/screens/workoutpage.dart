// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:meb_application/screens/homepage.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({Key? key}) : super(key: key);

  static const route = '/workout';
  static const routename = 'WorkoutPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Workout',
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black45,
                    fontStyle: FontStyle.italic))),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(bottom: 16.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: const EdgeInsets.only(
                                left: 20.0, bottom: 20.0, top: 0.0),
                            child: const Text('Time',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    color: Color.fromARGB(255, 7, 25, 58),
                                    fontStyle: FontStyle.italic))),
                        Container(
                            margin: const EdgeInsets.only(
                                left: 60.0, bottom: 20.0, top: 0.0),
                            child: const Text('Calories',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    color: Color.fromARGB(255, 7, 25, 58),
                                    fontStyle: FontStyle.italic))),
                        Container(
                            margin: const EdgeInsets.only(
                                left: 60.0, bottom: 20.0, top: 0.0),
                            child: const Text('Bpm',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    color: const Color.fromARGB(255, 7, 25, 58),
                                    fontStyle: FontStyle.italic))),
                      ],
                    )),
                //Container(child: ,)
                //class ChartData {
                //ChartData(this.x, this.y);
                //final int x;
                //final double y;
                //}
                Row(children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20.0, bottom: 0.0),
                    child: const Text('min'),
                    height: 40,
                    width: 60,
                    color: Colors.red,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 70.0, bottom: 0.0),
                    child: const Text('cal'),
                    height: 40,
                    width: 60,
                    color: Colors.green,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 70.0, bottom: 0.0),
                    child: const Text('bpm'),
                    height: 40,
                    width: 60,
                    color: Colors.blue,
                  ),
                ]),
                Container(
                    margin: const EdgeInsets.only(top: 400.0),
                    child: const Text(
                        'Regular exercise is essential for increasing energy and reducing fatigue, also because cardiovascular health and general endurance increase when exercising.')),
              ]),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            color: Colors.grey,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  child: const Text("Profile"),
                  onPressed: () {},
                ),
                FlatButton(
                  child: const Text("Plant"),
                  onPressed: () {},
                ),
                FlatButton(
                  child: const Text("Settings"),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ));
  }
}
