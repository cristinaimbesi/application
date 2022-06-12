import 'package:flutter/material.dart';
import 'package:meb_application/screens/sleeppage.dart';
import 'package:meb_application/screens/waterpage.dart';
import 'package:meb_application/screens/workoutpage%20copy.dart';

// ignore: must_be_immutable
class ListOptions extends StatefulWidget {
  String namepage;
  Icon iconpage;
  Widget page;
  static const route = '/listoption';
  ListOptions(
      {Key? key,
      required this.namepage,
      required this.iconpage,
      required this.page})
      : super(key: key);

  @override
  State<ListOptions> createState() => _ListOptionsState();
}

void _toWorkoutPage(BuildContext context) {
  //Pop the drawer first
  Navigator.pop(context);
  //Then pop the HomePage
  Navigator.of(context).pushReplacementNamed(WaterPage.route);
}

void _toWaterPage(BuildContext context) {
  //Pop the drawer first
  Navigator.pop(context);
  //Then pop the HomePage
  Navigator.of(context).pushReplacementNamed(WaterPage.route);
}

void _toSleepPage(BuildContext context) {
  //Pop the drawer first
  Navigator.pop(context);
  //Then pop the HomePage
  Navigator.of(context).pushReplacementNamed(SleepPage.route);
}

class _ListOptionsState extends State<ListOptions> {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

List<ListOptions> pagesLists = [
  ListOptions(
      namepage: 'Workout',
      iconpage: const Icon(Icons.fitness_center_sharp),
      page: WorkoutPage()),
  ListOptions(
      namepage: 'Water',
      iconpage: const Icon(Icons.water_drop),
      page: WaterPage()),
  ListOptions(
      namepage: 'Sleep',
      iconpage: const Icon(Icons.bedtime_rounded),
      page: SleepPage())
];
