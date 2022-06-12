import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:meb_application/screens/mainpage.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class WaterPage extends StatefulWidget {
  const WaterPage({Key? key}) : super(key: key);
  static const routename = 'Water';
  static const route = '/water';
  @override
  State<WaterPage> createState() => _WaterPageState();
}

class _WaterPageState extends State<WaterPage> {
  double waterglasses = 0.0;

  get currentIndex => null;
  @override
  Widget build(BuildContext context) {
    print('$WaterPage.routename built');
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            //Expanded(
            Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
              Icon(Icons.water_drop, size: 25, color: Colors.cyan),
              Text(
                'Giorno x:',
                style: TextStyle(fontSize: 25),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Lottie.network(
                  'https://assets5.lottiefiles.com/packages/lf20_9AGgPs.json',
                  width: 300,
                  height: 300),
            ]),
            Text(waterglasses.toString()),
            FAProgressBar(
              currentValue: waterglasses,
              displayText: 'mL',
              maxValue: 2000,
              progressColor: const Color.fromARGB(255, 109, 148, 129),
            ),
            Container(
                margin: const EdgeInsets.only(top: 50.0),
                child: const Text(
                    'Press the bottom every time you drink a glass of water; your goal in a day is drinking 2 liters. Start now, drink a glass of water!',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 22.0,
                      color: Colors.black,
                    ))),
          ]),
        ),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, color: Colors.white, size: 25.0
            //label: 'Add new data'
            ),
        onPressed: () {
          setState(() {
            waterglasses = waterglasses + 250;
          });
        },
      ),
    );
  } //build
}//WaterPage;