import 'dart:io';

import 'package:fitbitter/fitbitter.dart';
import 'package:flutter/material.dart';

import '../utils/stringpage.dart';
import 'finalpage.dart';

class SleepPage extends StatefulWidget {
  SleepPage({Key? key}) : super(key: key);

  var sleep = FitbitSleepData(dateOfSleep: DateTime.now());
  static const route = '/sleep';
  static const routename = 'SleepPage';
  @override
  _SleepPageState createState() => _SleepPageState();
}

class _SleepPageState extends State<SleepPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () async {
                  String? userId = await FitbitConnector.authorize(
                      context: context,
                      clientID: Strings.fitbitClientID,
                      clientSecret: Strings.fitbitClientSecret,
                      redirectUri: Strings.fitbitRedirectUri,
                      callbackUrlScheme: Strings.fitbitCallbackScheme);

                  FitbitSleepDataManager fitbitSleepDataManager =
                      FitbitSleepDataManager(
                    clientID: Strings.fitbitClientID,
                    clientSecret: Strings.fitbitClientSecret,
                  );
                  final sleepData = await fitbitSleepDataManager
                      .fetch(FitbitSleepAPIURL.withUserIDAndDay(
                    date: DateTime.now().subtract(Duration(days: 1)),
                    userID: userId,
                  )) as List<FitbitSleepData>;
                  final asleep = Text(' ${sleepData[0].dateOfSleep}');
                  final wokeup = Text(' ${sleepData[0].entryDateTime}');
                  print(asleep);
                  print(wokeup);
                },
                icon: Icon(Icons.favorite))
          ],
          title: const Text('Sleep',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black45,
                  fontStyle: FontStyle.italic)),
        ),
        body: Container(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 2.0),
                        child:
                            Text('Minutes of sleep: ') //31800000 millisecondi
                        ),
                    Flexible(
                      child: TextField(),
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 16.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(
                                    left: 45.0, bottom: 10.0, top: 20.0),
                                child: const Text('you fell asleep at:',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: Color.fromARGB(255, 7, 25, 58),
                                        fontStyle: FontStyle.italic))),
                            Container(
                                margin: const EdgeInsets.only(
                                    left: 60.0,
                                    bottom: 10.0,
                                    top: 20.0,
                                    right: 20.0),
                                child: Row(children: [
                                  Text('you woke up at: ',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: Color.fromARGB(255, 7, 25, 58),
                                          fontStyle: FontStyle.italic))
                                ])),
                          ],
                        )),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 50.0, bottom: 50),
                          child: Text('2022-06-10 00:00:00.000'),
                          height: 50,
                          width: 90,
                          color: Colors.red,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 80.0, bottom: 50),
                          child: Text('2022-06-10 06:56:00.000'),
                          height: 50,
                          width: 90,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'How do you sleep?',
                            style: TextStyle(fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // ignore: prefer_const_constructors
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const FinalPage(
                                                  title: '',
                                                )));
                                  },
                                  child: const CircleAvatar(
                                      //backgroundColor: fromCssColor("  rgba(255, 255, 255, 1)"),
                                      radius: 50,
                                      backgroundImage:
                                          AssetImage("images/happy.jpg")),
                                ),
                                // ignore: prefer_const_constructors
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const FinalPage(
                                                  title: '',
                                                )));
                                  },
                                  child: const CircleAvatar(
                                      // foregroundColor: foregroundColor,
                                      radius: 45,
                                      backgroundImage:
                                          AssetImage("images/med.jpg")),
                                ),
                                // ignore: prefer_const_constructors
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const FinalPage(
                                                  title: '',
                                                )));
                                  },
                                  child: const CircleAvatar(
                                      // foregroundColor: foregroundColor,
                                      radius: 45,
                                      backgroundImage:
                                          AssetImage("images/angry.jpg")),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 50.0, left: 10),
                            child: const Text(
                                'With the right amount of sleep, we increase our immune defenses and the pressure remains at acceptable levels, protecting us even in the most demanding periods. Protects from hormonal problems. Women of childbearing age who sleep little know something about this'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))));
  }

  @override
  State<StatefulWidget> createState() {
    throw UnimplementedError();
  } //build
}//SleepPage