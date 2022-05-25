import 'package:flutter/material.dart';
import 'package:meb_application/model/listoptions.dart';
import 'package:meb_application/screens/loginpage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static const route = '/profile';
  static const routename = 'ProfilePage';
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  dynamic name = 'Giacomo';
  dynamic surname = 'Cappon';
  dynamic sex = 'Male';
  dynamic address = 'Via';
  dynamic placeofresidence = 'Padova';
  dynamic placeofbirth = 'Bassano';
  dynamic dateofbirth = 'gg/mm/aa';
  dynamic bloodgroup = '?';

  Future<Object> _changeName(dynamic name) async {
    if (name == 'Giacomo') {
      return const TextField();
    } else {
      return 'The name is the same as before';
    }
  } //name

  Future<Object> _changeSurname(dynamic surname) async {
    if (surname == 'Cappon') {
      return const TextField();
    } else {
      return 'The surname is the same as before';
    } //surname
  }

  Future<Object> _changeSex(dynamic sex) async {
    if (sex == 'Male') {
      return const TextField();
    } else {
      return 'The sex is the same as before';
    } //sex
  }

  Future<Object> _changeAddress(dynamic address) async {
    if (address == 'Via') {
      return const TextField();
    } else {
      return 'The address is the same as before';
    } //address
  }

  Future<Object> _changePlaceofRecidence(dynamic placeofresidence) async {
    if (placeofresidence == 'Male') {
      return const TextField();
    } else {
      return 'The place of residence is the same as before';
    } //place of residence
  }

  Future<Object> _changePlaceofBirth(dynamic placeofbirth) async {
    if (placeofbirth == 'Male') {
      return const TextField();
    } else {
      return 'The place of birth is the same as before';
    } //place of birth
  }

  Future<Object> _changeDateofBirth(dynamic dateofbirth) async {
    if (dateofbirth == 'Male') {
      return const TextField();
    } else {
      return 'The date of birth is the same as before';
    } //date of birth
  }

  Future<Object> _changeBloodGroup(dynamic bloodgroup) async {
    if (bloodgroup == 'Male') {
      return const TextField();
    } else {
      return 'The blood group is the same as before';
    } //blood group
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ProfilePage'), actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.settings),
          tooltip: 'Modify',
          onPressed: () {
            _changeName(name);
            _changeSurname(surname);
            _changeSex(sex);
            _changeAddress(address);
            _changePlaceofRecidence(placeofresidence);
            _changePlaceofBirth(placeofbirth);
            _changeDateofBirth(dateofbirth);
            _changeBloodGroup(bloodgroup);
          },
          // handle the press
        ),
      ]),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
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
          ListView.builder(
              itemCount: pagesLists.length,
              itemBuilder: (context, index) {
                ListOptions pag = pagesLists[index];
                return Card(
                    child: ListTile(
                  title: Text(pag.namepage),
                  leading: pag.iconpage,
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    //return Navigator.push(context, MaterialPageRoute(builder: (context) => pag.page));
                  },
                ));
              }),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () => _toLoginPage(context),
          ),
        ]),
      ),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Row(
            children: [
              Text('Hello, $name!'),
            ],
          ),
          Row(children: [
            Column(children: [
              Image.asset(
                'images/profile.jpg',
                width: 200,
                height: 200,
              ),
            ]),
            Column(children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text('Name: $name')]),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [Text('Surname: $surname')]),
              //Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: const [Text('Age: ?')]),
            ]),
          ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Sex: $sex')]),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text('Address: $address')]),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text('Place of residence: $placeofresidence')]),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text('Place of birth: $placeofbirth')]),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text('Date of birth: $dateofbirth')]),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text('Blood group: $bloodgroup')]),
        ]),
      ),
    );
  } //build

  void _toLoginPage(BuildContext context) {
    //Pop the drawer first
    Navigator.pop(context);
    //Then pop the HomePage
    Navigator.of(context).pushReplacementNamed(LoginPage.route);
  }

  State<StatefulWidget> createState() {
    throw UnimplementedError();
  } //_toCalendarPage
}//ProfilePage
