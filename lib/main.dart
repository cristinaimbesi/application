import 'package:flutter/material.dart';
import 'package:meb_application/screens/homepage.dart';
import 'package:meb_application/screens/loginpage.dart';
import 'package:meb_application/screens/mainpage.dart';
import 'package:meb_application/screens/plantpage.dart';
import 'package:meb_application/screens/profile_page.dart';
import 'package:meb_application/screens/waterpage.dart';
import 'package:meb_application/screens/workoutpage.dart';
import 'package:meb_application/screens/sleeppage.dart';

void main() {
  runApp(const MyApp());
} //main

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 109, 148, 129),
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: LoginPage.route,
      routes: {
        LoginPage.route: (context) => const LoginPage(),
        '/main': ((context) => const MainPage()),
        '/home': (context) => const HomePage(),
        Profile_Page.route: (context) => const Profile_Page(),
        WaterPage.route: (context) => const WaterPage(),
        SleepPage.route: (context) => const SleepPage(),
        '/workout': (context) => const WorkoutPage(),
        PlantPage.route: (context) => const PlantPage(),
      },
    );
  } //build
} //MyApp