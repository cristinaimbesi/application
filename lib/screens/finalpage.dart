import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class FinalPage extends StatefulWidget {
  const FinalPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Thank you for the vote!',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
