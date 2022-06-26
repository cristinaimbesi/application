import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:meb_application/database/entities/towalk.dart';
import 'package:meb_application/screens/homepage.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import '../fitbitter.dart';
import '../repositories/databaseRepository.dart';
import '../utils/stringpage.dart';

class WorkoutPage extends StatefulWidget {
  WorkoutPage({Key? key}) : super(key: key);

  //var step = FitbitActivityData(activityId: String.);

  static const route = '/workout';
  static const routename = 'WorkoutPage';
  @override
  _WorkoutPageState createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  getActivityData() async {
    var response = await http.get(Uri.https(
        'api.fitbit.com', '/1/user/-/activities/steps/date/today/7d'));
    var jsonData = jsonDecode(response.body);
    List<ActivitySeries> activities = [];

    for (var u in jsonData) {
      ActivitySeries activity = ActivitySeries(u['dataTime'], u['value']);
      activities.add(activity);
    }
    print(activities.length);
    return activities;
  }

  List<FitbitActivityData>? stepsData;
  String? activityId;
  double? calories;
  double? distance;
  double? duration;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () async {
                    try {
                      var response = await Dio().get(
                          'https://api.fitbit.com/1/user/-/activities/steps/date/today/7d.json');
                      print(response);
                    } catch (e) {
                      print(e);
                    }
                  },
                  icon: const Icon(Icons.favorite))
            ],
            title: const Text('Workout',
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black45,
                    fontStyle: FontStyle.italic))),
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              String? userId = await FitbitConnector.authorize(
                  context: context,
                  clientID: Strings.fitbitClientID,
                  clientSecret: Strings.fitbitClientSecret,
                  redirectUri: Strings.fitbitRedirectUri,
                  callbackUrlScheme: Strings.fitbitCallbackScheme);
              FitbitActivityDataManager fitbitActivityDataManager =
                  FitbitActivityDataManager(
                      clientID: Strings.fitbitClientID,
                      clientSecret: Strings.fitbitClientSecret);

              final stepsData = await fitbitActivityDataManager
                  .fetch(FitbitActivityAPIURL.day(
                date: DateTime.now().subtract(const Duration(days: 7)),
                userID: userId,
                //resource: fitbitActivityDataManager.type,
              )) as List<FitbitActivityData>;
              //No need to use a Consumer, we are just using a method of the DatabaseRepository
              await Provider.of<DatabaseRepository>(context, listen: false)
                  .insertWalk(Walk(null, stepsData.first));
            },
            child: Icon(Icons.add)),
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
/*
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
                              */
                          ],
                        ),
                      ),
                      /*
            Row(children: [
              Container(
                margin:
                    const EdgeInsets.only(left: 20.0, bottom: 30.0, top: 0.0),
                child: Text('$duration min'),
                height: 40,
                width: 60,
                color: Colors.red,
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 70.0, bottom: 30.0, top: 0.0),
                child: Text('$calories calories'),
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
            */
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
                              BarChartGroupData(x: 7, barRods: [
                                BarChartRodData(
                                    y: 9, //stepsData![0].distance!,
                                    width: 15,
                                    colors: [
                                      const Color.fromARGB(255, 109, 148, 129)
                                    ]),
                              ]),
                              BarChartGroupData(x: 6, barRods: [
                                BarChartRodData(
                                    y: 8392, //stepsData![1].distance!,
                                    width: 15,
                                    colors: [
                                      const Color.fromARGB(255, 109, 148, 129)
                                    ]),
                              ]),
                              BarChartGroupData(x: 5, barRods: [
                                BarChartRodData(
                                    y: 384, //stepsData![2].distance!,
                                    width: 15,
                                    colors: [
                                      const Color.fromARGB(255, 109, 148, 129)
                                    ]),
                              ]),
                              BarChartGroupData(x: 4, barRods: [
                                BarChartRodData(
                                    y: 6062, //stepsData![3].distance!,
                                    width: 15,
                                    colors: [
                                      const Color.fromARGB(255, 109, 148, 129)
                                    ]),
                              ]),
                              BarChartGroupData(x: 3, barRods: [
                                BarChartRodData(
                                    y: 7832, //stepsData![4].distance!,
                                    width: 15,
                                    colors: [
                                      const Color.fromARGB(255, 109, 148, 129)
                                    ]),
                              ]),
                              BarChartGroupData(x: 2, barRods: [
                                BarChartRodData(
                                    y: 2797, //stepsData![5].distance!,
                                    width: 15,
                                    colors: [
                                      const Color.fromARGB(255, 109, 148, 129)
                                    ]),
                              ]),
                              BarChartGroupData(x: 1, barRods: [
                                BarChartRodData(
                                    y: 8204, //stepsData![6].distance!,
                                    width: 15,
                                    colors: [
                                      const Color.fromARGB(255, 109, 148, 129)
                                    ]),
                              ]),
                            ])),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 50.0),
                          child: const Text(
                              'Regular exercise is essential for increasing energy and reducing fatigue, also because cardiovascular health and general endurance increase when exercising.',
                              style: TextStyle(fontSize: 20))),
                      Container(child:
                          //We will show the todo table with a ListView.
                          //To do so, we use a Consumer of DatabaseRepository in order to rebuild the widget tree when
                          //entries are deleted or created.
                          Consumer<DatabaseRepository>(
                              builder: (context, dbr, child) {
                        //The logic is to query the DB for the entire list of Todo using dbr.findAllTodos()
                        //and then populate the ListView accordingly.
                        //We need to use a FutureBuilder since the result of dbr.findAllTodos() is a Future.

                        FutureBuilder(
                          initialData: null,
                          future: dbr.findAllWalks(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              final data = snapshot.data as List<Walk>;
                              return ListView.builder(
                                  itemCount: data.length,
                                  itemBuilder: (context, walkIndex) {
                                    final walk = data[walkIndex];
                                    return Card(
                                      elevation: 5,
                                      //Here we use a Dismissible widget to create a nicer UI.
                                      child: Dismissible(
                                        //Just create a dummy unique key
                                        key: UniqueKey(),
                                        //This is the background to show when the ListTile is swiped
                                        background:
                                            Container(color: Colors.red),
                                        //The ListTile is used to show the Todo entry
                                        child: ListTile(
                                          leading: Icon(Icons.note),
                                          title: Text('$Walk.dateTime'),
                                          subtitle: Text('ID: ${Walk.id}'),
                                          //If the ListTile is tapped, it is deleted
                                        ),
                                        //This method is called when the ListTile is dismissed
                                        onDismissed: (direction) async {
                                          //No need to use a Consumer, we are just using a method of the DatabaseRepository
                                          await Provider.of<DatabaseRepository>(
                                                  context,
                                                  listen: false)
                                              .removeWalk(walk);
                                        },
                                      ),
                                    );
                                  });
                            } else {
                              //A CircularProgressIndicator is shown while the list of Todo is loading.
                              return CircularProgressIndicator();
                            } //else
                          }, //builder of FutureBuilder
                        );
                      })),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () async {
                                String? userId =
                                    await FitbitConnector.authorize(
                                        context: context,
                                        clientID: Strings.fitbitClientID,
                                        clientSecret:
                                            Strings.fitbitClientSecret,
                                        redirectUri: Strings.fitbitRedirectUri,
                                        callbackUrlScheme:
                                            Strings.fitbitCallbackScheme);
                                FitbitActivityDataManager
                                    fitbitActivityDataManager =
                                    FitbitActivityDataManager(
                                  clientID: Strings.fitbitClientID,
                                  clientSecret: Strings.fitbitClientSecret,
                                  //type: 'steps',
                                );
                                final stepsData =
                                    await fitbitActivityDataManager
                                        .fetch(FitbitActivityAPIURL.day(
                                  date: DateTime.now()
                                      .subtract(const Duration(days: 7)),
                                  userID: userId,
                                  //resource: fitbitActivityDataManager.type,
                                )) as List<FitbitActivityData>;
                                final snackBar = SnackBar(
                                    content: Text(
                                        'Yesterday you walked ${stepsData[0].distance} kilometers!'));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                                if (stepsData.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content:
                                              Text("No steps data to show")));
                                } else {
                                  setState(() {
                                    activityId = stepsData[0].activityId!;
                                    distance = stepsData[0].distance!;
                                    //endTime = sleepData![0].endTime;
                                    duration = stepsData[0].duration!;
                                  });
                                }
                              },
                              child: Text('step'))
                          /*
                                    factory; FitbitActivityTimeseriesAPIURL.weekWithResource(
    {String? userID, required DateTime baseDate, String? resource}) {
  String dateStr = Formats.onlyDayDateFormatTicks.format(baseDate);
  return FitbitActivityTimeseriesAPIURL(
    url: '${_getBaseURL(userID)}/$resource/date/$dateStr/1w.json',
    resource: resource,
    userID: userID,
  );
  */
                        ],
                      ),
                    ]))));
  }
}

class ActivitySeries {
  final String dateTime, value;

  ActivitySeries(this.dateTime, this.value);
}
