import 'package:flutter/material.dart';
import 'package:urlshorteningapimaster/custom_widgets/lf_text.dart';
import 'package:urlshorteningapimaster/utils/lf_colors.dart';

void main() {
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
        padding: EdgeInsets.symmetric(horizontal: 150),
        child: ListView(
          children: [
            SizedBox(height: 30),
            _SectionOne(),
          ],
        ),
      ),
    );
  }
}

class _SectionOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      //color: Colors.pink[50],
      //width: 100,
      child: Row(
        children: [
          LFText(text: 'Shrortly', fontSize: 34, fontWeight: FontWeight.bold),
          SizedBox(width: 30),
          LFText(
            text: 'Features',
            color: LFColors.neutralGrayishViolet,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(width: 20),
          LFText(
            text: 'Pricing',
            color: LFColors.neutralGrayishViolet,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(width: 20),
          LFText(
            text: 'Resources',
            color: LFColors.neutralGrayishViolet,
            fontWeight: FontWeight.bold,
          ),
          Expanded(child: Container()),
          SizedBox(width: 20),
          FlatButton(
              onPressed: () {},
              child: Text('Login',
                  style: TextStyle(
                    fontSize: 18,
                    color: LFColors.neutralGrayishViolet,
                    fontWeight: FontWeight.bold,
                  ))),
          SizedBox(width: 10),
          FlatButton(
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 30),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              color: LFColors.primaryCyan,
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
