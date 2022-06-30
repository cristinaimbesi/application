import 'dart:io';
import 'package:fitbitter/fitbitter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../fitbit_entities/access_token.dart';
import '../fitbit_entities/sleep_entity.dart';
import '../repositories/databaseRepository.dart';
import '../utils/formats.dart';
import '../utils/stringpage.dart';
import 'finalpage.dart';

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
    return Consumer<DatabaseRepository>(builder: (child, dao, _) {
      return Scaffold(
          appBar: AppBar(
            title: const Text(SleepPage.routename),
          ),
          body: Container(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          margin: const EdgeInsets.only(
                              left: 10.0, bottom: 0.0, top: 20.0),
                          child: const Text('Minutes of sleep: ',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color.fromARGB(255, 7, 25, 58),
                                  fontStyle: FontStyle.italic))),
                      Container(
                          margin: const EdgeInsets.only(
                              left: 10.0, bottom: 0.0, top: 20.0),
                          child: retrieveDuration(
                            dao.bitSleepEntity,
                          )),
                      Container(
                          margin: const EdgeInsets.only(bottom: 16.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  margin: const EdgeInsets.only(
                                      left: 10.0, bottom: 0.0, top: 20.0),
                                  child: const Text('You fell asleep at: ',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color: Color.fromARGB(255, 7, 25, 58),
                                          fontStyle: FontStyle.italic))),
                              Container(
                                  margin: const EdgeInsets.only(
                                      left: 40.0,
                                      bottom: 0.0,
                                      top: 20.0,
                                      right: 20.0),
                                  child: Row(children: const [
                                    Text('You woke up at: ',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color:
                                                Color.fromARGB(255, 7, 25, 58),
                                            fontStyle: FontStyle.italic))
                                  ])),
                            ],
                          )),
                      Row(
                        children: [
                          Container(
                            margin:
                                const EdgeInsets.only(left: 50.0, bottom: 50),
                            child: retrieveAsleepTime(dao.bitSleepEntity),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(left: 110.0, bottom: 50),
                            child: retrieveWakeupTime(dao.bitSleepEntity),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
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
                                        radius: 45,
                                        backgroundImage:
                                            AssetImage("images/med.jpg")),
                                  ),
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
                                        radius: 45,
                                        backgroundImage:
                                            AssetImage("images/angry.jpg")),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 30.0, left: 10),
                              child: const Text(
                                  'With the right amount of sleep, we increase our immune defenses and the pressure remains at acceptable levels, protecting us even in the most demanding periods. Protects from hormonal problems. Women of childbearing age who sleep little know something about this',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontStyle: FontStyle.italic)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))));
    });
  }

  @override
  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }

  Text retrieveAsleepTime(FitBitSleepEntity? sleeps) {
    String asleeptime = '';
    sleeps!.sleep!.forEach((element) {
      element.levels!.data!.forEach((level) {
        if (level.level == 'wake') {
          if (asleeptime == '') {
            asleeptime = level.dateTime!;
          } else {
            if (Formats.onlyDayDateFormatSleep.parse(asleeptime).isAfter(
                Formats.onlyDayDateFormatSleep.parse(level.dateTime!))) {
              asleeptime = level.dateTime!;
            }
          }
        }
      });
    });
    return Text(
        Formats.onlyDayTimeFormat
            .format(Formats.onlyDayDateFormatSleep.parse(asleeptime))
            .toString(),
        style: TextStyle(
            fontSize: 20.0,
            color: Color.fromARGB(255, 7, 25, 58),
            fontStyle: FontStyle.italic));
  }

  Text retrieveWakeupTime(FitBitSleepEntity? sleeps) {
    String wakeuptime = sleeps!.sleep!.first.endTime!;
    return Text(
        Formats.onlyDayTimeFormat
            .format(Formats.onlyDayDateFormatSleep.parse(wakeuptime))
            .toString(),
        style: TextStyle(
            fontSize: 20.0,
            color: Color.fromARGB(255, 7, 25, 58),
            fontStyle: FontStyle.italic));
  }

  Text retrieveDuration(FitBitSleepEntity? sleeps) {
    int durationtime = sleeps!.sleep!.first.duration!;
    return Text((durationtime / 60000).toString(),
        style: TextStyle(
            fontSize: 20.0,
            color: Color.fromARGB(255, 7, 25, 58),
            fontStyle: FontStyle.italic));
  } //build
}//SleepPage