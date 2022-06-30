import 'dart:convert';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:meb_application/screens/homepage.dart';
import 'package:dio/dio.dart';
import 'package:provider/provider.dart';
import '../fitbit_entities/access_token.dart';
import '../fitbit_entities/activities_steps_entity.dart';
import '../fitbitter.dart';
import '../repositories/databaseRepository.dart';
import '../utils/formats.dart';
import '../utils/stringpage.dart';

class WorkoutPage extends StatefulWidget {
  WorkoutPage({Key? key}) : super(key: key);

  static const route = '/workout';
  static const routename = 'WorkoutPage';
  @override
  _WorkoutPageState createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DatabaseRepository>(builder: (child, dao, _) {
      return Scaffold(
          appBar: AppBar(
            title: const Text(WorkoutPage.routename),
          ),
          body: Container(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
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
                                  child: const Text('Steps Graph',
                                      style: TextStyle(
                                          fontSize: 25.0,
                                          color: Color.fromARGB(255, 7, 25, 58),
                                          fontStyle: FontStyle.italic))),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width - 10,
                          child: buildChart(dao.activitiesStepEntity),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 16.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  margin: const EdgeInsets.only(
                                      left: 20.0, bottom: 5.0, top: 30.0),
                                  child: const Text('Real time steps:',
                                      style: TextStyle(
                                          fontSize: 25.0,
                                          color: Color.fromARGB(255, 7, 25, 58),
                                          fontStyle: FontStyle.italic))),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 16.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  margin: const EdgeInsets.only(
                                      left: 20.0, bottom: 10.0, top: 5.0),
                                  child: Text(
                                      getTodayStep(dao.activitiesStepEntity),
                                      style: TextStyle(
                                          fontSize: 25.0,
                                          color: Color.fromARGB(255, 7, 25, 58),
                                          fontStyle: FontStyle.italic))),
                            ],
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              dao.setStepObject();
                            },
                            child: Text('Refresh')),
                        Container(
                            margin: const EdgeInsets.only(top: 30.0),
                            child: const Text(
                                'Regular exercise is essential for increasing energy and reducing fatigue, also because cardiovascular health and general endurance increase when exercising.',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontStyle: FontStyle.italic))),
                      ]))));
    });
  }

  BarChart buildChart(FitBitActivitiesStepEntity? steps) {
    print(steps!.activitiesSteps!.length.toString());
    List<BarChartGroupData> barcharlist = [];
    steps.activitiesSteps!.forEach((element) {
      print(element.toString());
      barcharlist.add(
        BarChartGroupData(
            x: Formats.onlyDayDateFormatTicks.parse(element.dateTime!).day,
            barRods: [
              BarChartRodData(
                  y: double.parse(element.value!),
                  width: 15,
                  colors: [const Color.fromARGB(255, 109, 148, 129)]),
            ]),
      );
    });
    return BarChart(BarChartData(
        borderData: FlBorderData(
            border: const Border(
          top: BorderSide.none,
          right: BorderSide.none,
          left: BorderSide(width: 1),
          bottom: BorderSide(width: 1),
        )),
        groupsSpace: 1,
        barGroups: barcharlist));
  }

  String getTodayStep(FitBitActivitiesStepEntity? activitiesStepEntity) {
    double stepsToday = 0;
    activitiesStepEntity!.activitiesSteps!.forEach((element) {
      if (element.dateTime ==
          Formats.onlyDayDateFormatTicks.format(DateTime.now())) {
        stepsToday = double.parse(element.value!);
      }
    });
    return stepsToday.toString();
  }
}
