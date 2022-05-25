//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:meb_application/screens/loginpage.dart';
import 'package:meb_application/screens/profilepage.dart';
import 'package:meb_application/screens/sleeppage.dart';
import 'package:meb_application/screens/waterpage.dart';
import 'package:meb_application/screens/workoutpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const route = '/home/';
  static const routename = 'Homepage';
  @override
  _HomePageState createState() => _HomePageState();

  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [const HomePage(), const ProfilePage()];

  @override
  Widget build(BuildContext context) {
    //print('${HomePage.routename} built');
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Column(
          //physics: BouncingScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'images/walking.jpg',
                  width: 500,
                  height: 178,
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                //style: ButtonStyle(overlayColor: Color.fromARGB(a, r, g, b)),
                onPressed: () {
                  Navigator.of(context).pushNamed('/workout');
                },
                child: const Text(
                  'WORKOUT',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25.0,
                    color: Colors.white,
                    decorationColor: Color.fromARGB(255, 109, 148, 129),
                    //backgroundColor: Color.fromARGB(255, 109, 148, 129)
                  ),
                ),
              )
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'images/drinking.jpg',
                  width: 500,
                  height: 178,
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/water');
                },
                child: const Text(
                  'WATER',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25.0,
                    color: Colors.white,
                    //backgroundColor: Color.fromARGB(255, 109, 148, 129)
                  ),
                ),
              )
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'images/sleeping.jpg',
                  width: 500,
                  height: 178,
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/sleep');
                },
                child: const Text(
                  'SLEEP',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25.0,
                    color: Colors.white,
                    //backgroundColor: Color.fromARGB(255, 109, 148, 129)
                  ),
                ),
              )
            ]),
          ]),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 109, 148, 129),
            ),
            child: Center(
              child: Text(
                'Choose your page',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 25.0,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () => _toLoginPage(context),
          ),
          ListTile(
            leading: const Icon(Icons.fitness_center_sharp),
            title: const Text('Workout'),
            onTap: () => Navigator.of(context).pushNamed(WorkoutPage.route),
          ),
          ListTile(
            leading: const Icon(Icons.bedtime_rounded),
            title: const Text('Sleep'),
            onTap: () => Navigator.of(context).pushNamed(SleepPage.route),
          ),
          ListTile(
            leading: const Icon(Icons.water_drop),
            title: const Text('Water'),
            onTap: () => Navigator.of(context).pushNamed(WaterPage.route),
          ),
        ]),
      ),
    );
  } //build

  void _toLoginPage(BuildContext context) {
    //Pop the drawer first
    Navigator.pop(context);
    //Then pop the HomePage
    Navigator.of(context).pushReplacementNamed(LoginPage.route);
  } //_toCalendarPage

  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
}
