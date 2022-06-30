import 'package:flutter/material.dart';
import 'package:meb_application/model/userpage.dart';
import 'package:meb_application/screens/loginpage.dart';
import 'package:meb_application/screens/sleeppage.dart';
import 'package:meb_application/screens/waterpage.dart';
import 'package:meb_application/screens/workoutpage.dart';
import 'package:meb_application/utils/userpreferences.dart';
import 'package:meb_application/widgets/profilewidget.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({Key? key}) : super(key: key);
  static const route = '/profile_';
  @override
  _Profile_PageState createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: AppBar(
          title: const Text('ProfilePage'),
          shadowColor: Colors.black,
          bottomOpacity: 12,
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: null,
            ),
          ]),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
            //decoration: const BoxDecoration(
            //color: Color.fromARGB(255, 109, 148, 129),
            //),
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
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 24),
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          //Center(child: buildUpgradeButton()),
          const SizedBox(height: 24),
          //NumbersWidget(),
          //const SizedBox(height: 48),
          buildAbout(user),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget buildName(UserPage user) => Column(
        children: [
          Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildAbout(UserPage user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About me',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
  void _toLoginPage(BuildContext context) {
    //Pop the drawer first
    Navigator.pop(context);
    //Then pop the HomePage
    Navigator.of(context).pushReplacementNamed(LoginPage.route);
  }
}
