import 'package:flutter/material.dart';
import 'package:urlshorteningapimaster/custom_widgets/lf_text.dart';
import 'package:urlshorteningapimaster/utils/lf_colors.dart';

class SectionThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: LFColors.gray,
      child: Container(
          margin: EdgeInsets.only(left: 125, right: 175),
          height: 450,
          color: LFColors.gray,
          child: Column(
            children: [
              Transform.translate(
                offset: Offset(0, -75),
                child: _ShortenIt(),
              ),
              SizedBox(height: 12),
              Transform.translate(
                offset: Offset(0, -60),
                child: Container(
                  child: Column(
                    children: [
                      _Link(
                        text1: 'lfdel24@gmail.com',
                        text2: 'lfdel24@gmail.com',
                        text3: 'Copy',
                        color: LFColors.cyan,
                      ),
                      SizedBox(height: 14),
                      _Link(
                        text1: 'lfdel24@gmail.com',
                        text2: 'lfdel24@gmail.com',
                        text3: 'Copied!',
                        color: LFColors.veryDarkBlue,
                      ),
                      SizedBox(height: 14),
                      _Link(
                        text1: 'lfdel24@gmail.com',
                        text2: 'lfdel24@gmail.com',
                        text3: 'Copy',
                        color: LFColors.cyan,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class _ShortenIt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: _boxDecoration(LFColors.darkViolet),
        height: 150,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: _boxDecoration(Colors.white),
                margin: EdgeInsets.only(left: 50),
                child: TextField(
                  style: TextStyle(fontSize: 18),
                  decoration:
                      InputDecoration(hintText: 'Shorten a link here...'),
                ),
              ),
            ),
            SizedBox(width: 15),
            _FlatButton(
              text: 'Shorten It!',
              padding: EdgeInsets.symmetric(vertical: 22, horizontal: 70),
              borderRadius: 25,
              color: LFColors.cyan,
            ),
            SizedBox(width: 50),
          ],
        ));
  }
}

BoxDecoration _boxDecoration(Color color) {
  return BoxDecoration(color: color, borderRadius: BorderRadius.circular(10));
}

class _Link extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final Color color;

  const _Link({Key key, this.text1, this.text2, this.text3, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: _boxDecoration(Colors.white),
        height: 60,
        child: Row(
          children: [
            SizedBox(width: 30),
            Expanded(
                child: LFText(
              text: text1,
            )),
            LFText(
              text: text2,
              color: LFColors.cyan,
              fontSize: 18,
            ),
            SizedBox(width: 15),
            _FlatButton(
              text: text3,
              color: color,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              borderRadius: 6,
            ),
            SizedBox(width: 30)
          ],
        ));
  }
}

class _FlatButton extends StatelessWidget {
  final String text;
  final Color color;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  const _FlatButton({
    Key key,
    this.color,
    this.text,
    this.borderRadius,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        padding: padding,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        onPressed: () {},
        color: color,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
