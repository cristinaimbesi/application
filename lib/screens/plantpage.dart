import 'package:flutter/material.dart';
import 'package:meb_application/repositories/databaseRepository.dart';
import 'package:meb_application/screens/loginpage.dart';
import 'package:meb_application/screens/sleeppage.dart';
import 'package:meb_application/screens/waterpage.dart';
import 'package:meb_application/screens/workoutpage.dart';
import 'package:meb_application/utils/formats.dart';
import 'package:provider/provider.dart';
import '../fitbit_entities/access_token.dart';

class PlantPage extends StatelessWidget {
  PlantPage({Key? key}) : super(key: key);

  static const route = '/plant';
  static const routename = 'PlantPage';

  @override
  Widget build(BuildContext context) {
    print('${PlantPage.routename} built');
    return Consumer<DatabaseRepository>(builder: (child, dao, _) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(PlantPage.routename),
        ),
        body: Column(children: [
          Container(
            margin: const EdgeInsets.only(left: 30.0, bottom: 30.0, top: 10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                      child: Text(
                    'Today score:',
                    style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
                  ))
                ]),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              margin: const EdgeInsets.only(left: 10.0, bottom: 30.0, top: 0.0),
              child: Center(
                child: choosePlant(dao),
              ),
            )
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              margin: const EdgeInsets.only(left: 10.0, bottom: 30.0, top: 0.0),
              child: Center(
                child: chooseText(dao),
              ),
            )
          ]),
        ]),
        drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: [
            DrawerHeader(
              child: Center(
                child: Image.asset(
                  'images/logo.jpeg',
                  width: 500,
                  height: 500,
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
    });
  } //build

  void _toLoginPage(BuildContext context) {
    //Pop the drawer first
    Navigator.pop(context);
    //Then pop the HomePage
    Navigator.of(context).pushReplacementNamed(LoginPage.route);
  } //_toCalendarPage

  Widget choosePlant(DatabaseRepository dao) {
    double values = 0;
    double durationSleep = dao.bitSleepEntity!.sleep!.first.duration! / 1000;
    double stepsToday = 0;
    dao.activitiesStepEntity!.activitiesSteps!.forEach((element) {
      if (element.dateTime ==
          Formats.onlyDayDateFormatTicks.format(DateTime.now())) {
        stepsToday = double.parse(element.value!);
      }
    });

    values = ((durationSleep / 720) + (stepsToday / 200));
    if (values < 25) {
      return Image.asset(
        'images/sadplant.jpeg',
        width: 300,
        height: 300,
      );
    } else if (values < 50) {
      return Image.asset(
        'images/midsadplant.jpeg',
        width: 300,
        height: 300,
      );
    } else if (values < 75) {
      return Image.asset(
        'images/midhappyplant.jpeg',
        width: 300,
        height: 300,
      );
    } else if (values >= 75) {
      return Image.asset(
        'images/happyplant.jpeg',
        width: 300,
        height: 300,
      );
    } else {
      return Text('No images to show');
    }
  } //choosePlant

  Widget chooseText(DatabaseRepository dao) {
    double values = 0;
    double durationSleep = dao.bitSleepEntity!.sleep!.first.duration! / 1000;
    double stepsToday = 0;
    dao.activitiesStepEntity!.activitiesSteps!.forEach((element) {
      if (element.dateTime ==
          Formats.onlyDayDateFormatTicks.format(DateTime.now())) {
        stepsToday = double.parse(element.value!);
      }
    });

    values = ((durationSleep / 720) + (stepsToday / 200));

    if (values < 25) {
      return Text('Improve your scores!',
          style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic));
    } else if (values < 50) {
      return Text('It is not enough, you can do it better!',
          style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic));
    } else if (values < 75) {
      return Text('You are almost there, good job!',
          style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic));
    } else if (values >= 75) {
      return Text('Relax! You have completed your goals!',
          style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic));
    } else {
      return Text('Insert data',
          style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic));
    }
  } //chooseText
}//PlantPage