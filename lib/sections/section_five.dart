import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:urlshorteningapimaster/custom_widgets/lf_text.dart';
import 'package:urlshorteningapimaster/utils/lf_colors.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SectionFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: LFColors.gray,
      child: Stack(
        children: [
          Positioned(
            bottom: 150,
            left: 125,
            child: _Card(
              nameImage: 'icon-brand-recognition.svg',
              title: 'Brand Recognition',
              text: '''
Boos your brand rocognition with  
each click. Generic links dont mean a 
thing. Branded links help instill 
confidence in your  content.''',
            ),
          ),
          Positioned(
            bottom: 100,
            left: 480,
            child: _Card(
              nameImage: 'icon-detailed-records.svg',
              title: 'Brand Recognition',
              text: '''
Boos your brand rocognition with  
each click. Generic links dont mean a 
thing. Branded links help instill 
confidence in your  content.''',
            ),
          ),
          Positioned(
            bottom: 50,
            right: 160,
            child: _Card(
              nameImage: 'icon-fully-customizable.svg',
              title: 'Brand Recognition',
              text: '''
Boos your brand rocognition with  
each click. Generic links dont mean a 
thing. Branded links help instill 
confidence in your  content.''',
            ),
          )
        ],
      ),
    );
  }
}

class _Card extends StatelessWidget {
  final String nameImage;
  final String title;
  final String text;

  const _Card({Key key, this.nameImage, this.title, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 315,
      //color: Colors.blue,
      child: Stack(
        children: [
          Positioned(
            top: 50,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              width: 350,
              height: 260,
            ),
          ),
          Positioned(
            left: 30,
            child: Container(
              child: WebsafeSvg.asset(nameImage),
              decoration: BoxDecoration(
                color: LFColors.veryDarkBlue,
                borderRadius: BorderRadius.circular(100),
              ),
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
              left: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 140),
                  LFText(
                    text: title,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: LFColors.veryDarkBlue,
                  ),
                  SizedBox(height: 20),
                  LFText(
                    text: text,
                    color: LFColors.grayishViolet,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
