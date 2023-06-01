import 'package:flutter/material.dart';
import 'package:islamic_kids/constants/app_styles.dart';

import '../../configurations/size_config.dart';


class NamazContent extends StatelessWidget {
  const NamazContent(
      {Key? key,
        required this.dua,
        required this.title,
        required this.subTitle,
        required this.index})
      : super(key: key);
  final String dua;
  final String title;
  final String subTitle;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth! * 0.18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height:  SizeConfig.screenHeight! * 0.1,
          ),
          Text('Step ${index+1}',
              style: AppStyles.stepTitle),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.1,
          ),

          Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black,
                fontFamily: 'Gomgom',
                fontSize: SizeConfig.screenHeight! * 0.023),

          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.016,
          ),
          Text(dua,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black,
                fontSize: SizeConfig.screenHeight! * 0.055),

          ),
          Text(subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,
                  fontSize: index == 1 ? SizeConfig.screenHeight ! * 0.0189: SizeConfig.screenHeight! * 0.025)),
        ],
      ),
    );
  }
}
