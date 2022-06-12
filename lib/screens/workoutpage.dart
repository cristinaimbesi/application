import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:meb_application/screens/homepage.dart';
import 'package:dio/dio.dart';

import '../fitbitter.dart';
import '../utils/stringpage.dart';

class WorkoutPage extends StatelessWidget {
  WorkoutPage({Key? key}) : super(key: key);

  static const route = '/workout';
  static const routename = 'WorkoutPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () async {
                  try {
                    var response = await Dio().get('http://www.google.com');
                    print(response);
                  } catch (e) {
                    print(e);
                  }
                },
                icon: Icon(Icons.favorite))
          ],
          title: const Text('Workout',
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.black45,
                  fontStyle: FontStyle.italic))),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
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
                              color: Color.fromARGB(230, 7, 25, 58),
                              fontStyle: FontStyle.italic))),
                ],
              ),
            ),
            Row(children: [
              Container(
                margin:
                    const EdgeInsets.only(left: 20.0, bottom: 30.0, top: 0.0),
                child: const Text('min'),
                height: 40,
                width: 60,
                color: Colors.red,
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 70.0, bottom: 30.0, top: 0.0),
                child: const Text('cal'),
                height: 40,
                width: 60,
                color: Colors.green,
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 70.0, bottom: 30.0, top: 0.0),
                child: const Text('bpm'),
                height: 40,
                width: 60,
                color: Colors.blue,
              ),
            ]),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width - 10,
              child: BarChart(BarChartData(
                  borderData: FlBorderData(
                      border: const Border(
                    top: BorderSide.none,
                    right: BorderSide.none,
                    left: BorderSide(width: 1),
                    bottom: BorderSide(width: 1),
                  )),
                  groupsSpace: 10,
                  barGroups: [
                    BarChartGroupData(x: 1, barRods: [
                      BarChartRodData(
                          y: 9,
                          width: 15,
                          colors: [const Color.fromARGB(255, 109, 148, 129)]),
                    ]),
                    BarChartGroupData(x: 2, barRods: [
                      BarChartRodData(
                          y: 9,
                          width: 15,
                          colors: [const Color.fromARGB(255, 109, 148, 129)]),
                    ]),
                    BarChartGroupData(x: 3, barRods: [
                      BarChartRodData(
                          y: 4,
                          width: 15,
                          colors: [const Color.fromARGB(255, 109, 148, 129)]),
                    ]),
                    BarChartGroupData(x: 4, barRods: [
                      BarChartRodData(
                          y: 2,
                          width: 15,
                          colors: [const Color.fromARGB(255, 109, 148, 129)]),
                    ]),
                    BarChartGroupData(x: 5, barRods: [
                      BarChartRodData(
                          y: 13,
                          width: 15,
                          colors: [const Color.fromARGB(255, 109, 148, 129)]),
                    ]),
                    BarChartGroupData(x: 6, barRods: [
                      BarChartRodData(
                          y: 17,
                          width: 15,
                          colors: [const Color.fromARGB(255, 109, 148, 129)]),
                    ]),
                    BarChartGroupData(x: 7, barRods: [
                      BarChartRodData(
                          y: 19,
                          width: 15,
                          colors: [const Color.fromARGB(255, 109, 148, 129)]),
                    ]),
                  ])),
            ),
            Container(
                margin: const EdgeInsets.only(top: 50.0),
                child: const Text(
                    'Regular exercise is essential for increasing energy and reducing fatigue, also because cardiovascular health and general endurance increase when exercising.',
                    style: TextStyle(fontSize: 20))),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () async {
                      String? userId = await FitbitConnector.authorize(
                          context: context,
                          clientID: Strings.fitbitClientID,
                          clientSecret: Strings.fitbitClientSecret,
                          redirectUri: Strings.fitbitRedirectUri,
                          callbackUrlScheme: Strings.fitbitCallbackScheme);
                      FitbitActivityTimeseriesDataManager
                          fitbitActivityTimeseriesDataManager =
                          FitbitActivityTimeseriesDataManager(
                        clientID: Strings.fitbitClientID,
                        clientSecret: Strings.fitbitClientSecret,
                        type: 'steps',
                      );
                      final stepsData =
                          await fitbitActivityTimeseriesDataManager.fetch(
                              FitbitActivityTimeseriesAPIURL.dayWithResource(
                        date: DateTime.now().subtract(Duration(days: 7)),
                        userID: userId,
                        resource: fitbitActivityTimeseriesDataManager.type,
                      )) as List<FitbitActivityTimeseriesData>;
                      final snackBar = SnackBar(
                          content: Text(
                              'Yesterday you walked ${stepsData[0].value} steps!'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Text('step'))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
