import 'package:flutter/material.dart';
import 'package:meb_application/screens/homepage.dart';
import 'package:meb_application/screens/plantpage.dart';
import 'package:meb_application/screens/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static const route = '/main';
  static const routename = 'MainPage';
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0; //default value
  // ignore: prefer_const_constructors
  List screens = [HomePage(), PlantPage(), Profile_Page()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 109, 148, 129),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.nature), label: 'Plant'),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervisor_account),
              label: 'Profile',
            )
          ],
        ));
  } //build
}//MainPage