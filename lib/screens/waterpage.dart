import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:meb_application/screens/mainpage.dart';

class WaterPage extends StatelessWidget {
  const WaterPage({Key? key}) : super(key: key);

  static const route = '/water';
  static const routename = 'WaterPage';

  @override
  Widget build(BuildContext context) {
    print('${WaterPage.routename} built');
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, MainPage.route);
          },
        ),
        title: const Text(WaterPage.routename),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(children: [
          //Expanded(
          Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
            Icon(Icons.water_drop, size: 25, color: Colors.cyan),
            Text('Giorno x:'),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Lottie.network(
                'https://assets5.lottiefiles.com/packages/lf20_9AGgPs.json',
                width: 300,
                height: 300),
          ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [Text('da mettere barra')]),
          Container(
              margin: const EdgeInsets.only(top: 100.0),
              child: const Text(
                  'Your body needs of two liters of water to do the normal biological functionalities, to sleep well and to do daily activities.',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25.0,
                    color: Colors.black,
                  ))),
        ]),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, color: Colors.white, size: 25.0
            //label: 'Add new data'
            ),
        onPressed: () {},
      ),
    );
  } //build
}//WaterPage;