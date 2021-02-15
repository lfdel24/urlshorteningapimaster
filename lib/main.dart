import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:urlshorteningapimaster/sections/section_four.dart';
import 'package:urlshorteningapimaster/sections/section_one.dart';
import 'package:urlshorteningapimaster/sections/section_three.dart';
import 'package:urlshorteningapimaster/sections/section_two.dart';

void main() {
  debugPaintLayerBordersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'lfdel24@gmail.com urlshorteningapimaster',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: [
            SizedBox(height: 40),
            SectionOne(),
            SizedBox(height: 75),
            SectionTwo(),
            SizedBox(height: 140),
            SectionThree(),
            SectionFour(),
            Text('aksdasdasd'),
            Text('aksdasdasd'),
            Text('aksdasdasd'),
            Text('aksdasdasd'),
            Text('aksdasdasd'),
            Text('aksdasdasd'),
            Text('aksdasdasd'),
            Text('aksdasdasd')
          ],
        ),
      ),
    );
  }
}
