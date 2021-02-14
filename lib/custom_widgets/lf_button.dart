import 'package:flutter/material.dart';
import 'package:urlshorteningapimaster/utils/lf_colors.dart';

class LFFlatButton extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry padding;

  const LFFlatButton({Key key, this.text, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        padding: padding,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {},
        color: LFColors.cyan,
        child: Text(
          'Sign Up',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
