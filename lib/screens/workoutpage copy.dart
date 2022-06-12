import 'package:fitbitter/fitbitter.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:meb_application/screens/homepage.dart';

import '../utils/stringpage.dart';

class WorkoutPage extends StatefulWidget {
  WorkoutPage({Key? key}) : super(key: key);
  List<FlSpot> mylist = [FlSpot(2, 32)];

  @override
  _WorkOutPageState createState() => _WorkOutPageState();
}

class _WorkOutPageState extends State<WorkoutPage> {
  final int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    //This is to instantiate the class responsible for responsive UI
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: const Text('WorkoutPage',
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
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
                  margin: const EdgeInsets.only(top: 50.0),
                  child: const Text(
                      'Regular exercise is essential for increasing energy and reducing fatigue, also because cardiovascular health and general endurance increase when exercising.')),
              Container(
                  child: LineChart(
                LineChartData(
                    backgroundColor: Colors.amber,
                    borderData: FlBorderData(show: false),
                    titlesData: FlTitlesData(
                      leftTitles: SideTitles(
                        getTextStyles: (context, value) => const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                        showTitles: true,
                      ),
                      topTitles: SideTitles(showTitles: false),
                      bottomTitles: SideTitles(
                          getTextStyles: (context, value) => const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                          showTitles: true,
                          getTitles: (index) {
                            return 'title';
                          }),
                    ),
                    lineBarsData: [
                      LineChartBarData(show: false, colors: [Colors.red]),
                      LineChartBarData(
                        colors: [
                          Colors.green,
                          Colors.green,
                          Colors.greenAccent
                        ],
                      ),
                      LineChartBarData(
                        colors: [
                          Colors.red.shade800.withOpacity(0.9),
                          Colors.red.shade400.withOpacity(0.9),
                          Colors.redAccent.withOpacity(0.9)
                        ],
                      ),
                    ]),
              )),
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          child: const Text('Fitbit'),
          backgroundColor: const Color.fromARGB(255, 109, 148, 129),
          onPressed: () async {
            // Use them as you want
            final snackBar = SnackBar(
                content: Text(
                    'Yesterday you walked fitbitvalue steps!')); //${stepsData[0].value}
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }),
    );
  }
}
