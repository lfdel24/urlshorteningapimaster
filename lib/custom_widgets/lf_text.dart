import 'package:flutter/material.dart';
import 'package:urlshorteningapimaster/utils/lf_colors.dart';

class LFText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  const LFText(
      {Key key,
      this.text = "",
      this.fontSize = 18,
      this.color,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
          )),
    );
  }
}
