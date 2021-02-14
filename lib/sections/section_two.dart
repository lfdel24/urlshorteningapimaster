import 'package:flutter/material.dart';
import 'package:urlshorteningapimaster/custom_widgets/lf_button.dart';
import 'package:urlshorteningapimaster/custom_widgets/lf_text.dart';
import 'package:urlshorteningapimaster/utils/lf_colors.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SectionTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 125),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _Column(),
            SizedBox(width: 100),
            WebsafeSvg.asset('illustration-working.svg', width: 600)
          ],
        ));
  }
}

class _Column extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        LFText(
          text: 'More than just',
          color: Colors.black,
          fontSize: 70,
          fontWeight: FontWeight.bold,
        ),
        LFText(
          text: 'shorter links',
          color: Colors.black,
          fontSize: 60,
          fontWeight: FontWeight.bold,
        ),
        LFText(
          text: "Build your brand's recognition and get detailed",
          color: LFColors.neutralGrayishViolet,
          fontSize: 22,
          fontWeight: FontWeight.normal,
        ),
        LFText(
          text: "insights on how your links are performing.",
          color: LFColors.neutralGrayishViolet,
          fontSize: 22,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(height: 25),
        LFFlatButton(
          text: 'Get Started',
          padding: EdgeInsets.symmetric(vertical: 22, horizontal: 60),
        ),
      ],
    );
  }
}
