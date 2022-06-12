import 'package:flutter/material.dart';
import 'package:meb_application/screens/homepage.dart';
import 'package:meb_application/screens/loginpage.dart';
import 'package:meb_application/screens/mainpage.dart';
import 'package:meb_application/screens/plantpage.dart';
import 'package:meb_application/screens/profile_page.dart';
import 'package:meb_application/screens/waterpage.dart';
import 'package:meb_application/screens/workoutpage.dart';
import 'package:meb_application/screens/sleeppage.dart';
import 'package:meb_application/database/database.dart';
import 'package:meb_application/repositories/databaseRepository.dart';
import 'package:provider/provider.dart';
//import 'package:meal_manager/screens/mealpage.dart';

Future<void> main() async {
  //This is a special method that use WidgetFlutterBinding to interact with the Flutter engine.
  //This is needed when you need to interact with the native core of the app.
  //Here, we need it since when need to initialize the DB before running the app.
  WidgetsFlutterBinding.ensureInitialized();

  //This opens the database.
  final ApPlantDatabase database =
      await $FloorApPlantDatabase.databaseBuilder('app_database.db').build();
  //This creates a new DatabaseRepository from the AppDatabase instance just initialized
  final databaseRepository = DatabaseRepository(database: database);

  //Here, we run the app and we provide to the whole widget tree the instance of the DatabaseRepository.
  //That instance will be then shared through the platform and will be unique.
  runApp(ChangeNotifierProvider<DatabaseRepository>(
    create: (context) => databaseRepository,
    child: const MyApp(),
  ));
} //main

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ApPlant',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
        SleepPage.route: (context) => SleepPage(),
        '/workout': (context) => WorkoutPage(),
        PlantPage.route: (context) => const PlantPage(),
      },
    );
  } //build
} //MyApp