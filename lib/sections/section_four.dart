import 'package:flutter/material.dart';
import 'package:urlshorteningapimaster/custom_widgets/lf_text.dart';
import 'package:urlshorteningapimaster/utils/lf_colors.dart';

class SectionFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: LFColors.gray,
      height: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LFText(
            text: 'Advanced Statistics',
            color: LFColors.darkViolet,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 24),
          LFText(
            text: 'Track how your links are performing acrros the web with',
            color: LFColors.darkViolet,
          ),
          SizedBox(height: 12),
          LFText(
            text: 'our advanced stattistics dashboard.',
            color: LFColors.darkViolet,
          )
        ],
      ),
    );
  }
}
