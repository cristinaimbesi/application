import 'package:flutter/material.dart';
import 'package:meb_application/screens/loginpage.dart';
import 'package:meb_application/screens/sleeppage.dart';
import 'package:meb_application/screens/waterpage.dart';
import 'package:meb_application/screens/workoutpage.dart';

class PlantPage extends StatelessWidget {
  const PlantPage({Key? key}) : super(key: key);

  static const route = '/plant';
  static const routename = 'PlantPage';

  @override
  Widget build(BuildContext context) {
    print('${PlantPage.routename} built');
    return Scaffold(
      appBar: AppBar(
        title: const Text(PlantPage.routename),
      ),
      body: const Center(child: Text('Ciao')),
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

}//PlantPage