import 'package:flutter/material.dart';
import 'package:urlshorteningapimaster/custom_widgets/lf_button.dart';
import 'package:urlshorteningapimaster/custom_widgets/lf_text.dart';
import 'package:urlshorteningapimaster/utils/lf_colors.dart';

class SectionOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 125, right: 175),
      alignment: AlignmentDirectional.center,
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
          LFFlatButton(
              text: 'Sign Up',
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 30)),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
