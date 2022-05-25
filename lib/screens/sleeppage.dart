import 'package:fitbitter/fitbitter.dart';
import 'package:flutter/material.dart';

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
        title: const Text(SleepPage.routename),
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
                        clientID: '238KFZ',
                        clientSecret: '5957dc2484f40fa6e06463901eb44cef',
                        redirectUri: 'example://fitbit/auth',
                        callbackUrlScheme: 'example',
                      );
                    }, //da importare i dati fitbit
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 100.0),
                child: const Text(
                    'With the right amount of sleep, we increase our immune defenses and the pressure remains at acceptable levels, protecting us even in the most demanding periods. Protects from hormonal problems. Women of childbearing age who sleep little know something about this'),
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