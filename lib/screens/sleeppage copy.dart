import 'package:fitbitter/fitbitter.dart';
import 'package:flutter/material.dart';

import '../utils/stringpage.dart';

class SleepPage extends StatefulWidget {
  const SleepPage({Key? key}) : super(key: key);

  static const route = '/sleep';
  static const routename = 'SleepPage';
  @override
  _SleepPageState createState() => _SleepPageState();
}

class _SleepPageState extends State<SleepPage> {
  @override
  Widget build(BuildContext context) {
    print('${SleepPage.routename} built');
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, '/home');
          },
        ),
        title: const Text(SleepPage.routename,
            style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontStyle: FontStyle.italic)),
      ),
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
                          margin: const EdgeInsets.only(right: 8.0),
                          child: const Text('Time of sleep:')),
                      const Flexible(child: TextField()),
                      const Text('Min')
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  ElevatedButton(
                    child: const Text(
                      'Confirm',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
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
                      FitbitSleepAPIURL fitbitSleepAPIURL =
                          FitbitSleepAPIURL.withUserIDAndDay(
                        date: DateTime.now().subtract(Duration(days: 7)),
                        userID: userId,
                      );
                      final fitbitSleep = await fitbitSleepDataManager
                          .fetch(fitbitSleepAPIURL) as List<FitbitSleepAPIURL>;

                      final sleep = FitbitSleepData(
                          encodedId: Strings.fitbitClientID,
                          dateOfSleep:
                              DateTime.now().subtract(const Duration(days: 7)),
                          entryDateTime: DateTime.now(),
                          level: 'wake');
                    }, //da importare i dati fitbit
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 100.0),
                child: const Text(
                  'With the right amount of sleep, we increase our immune defenses and the pressure remains at acceptable levels, protecting us even in the most demanding periods. Protects from hormonal problems. Women of childbearing age who sleep little know something about this',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ]),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    throw UnimplementedError();
  } //build
}//SleepPage