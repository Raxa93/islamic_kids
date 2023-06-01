import 'package:flutter/material.dart';
import 'package:islamic_kids/constants/app_styles.dart';

import '../../configurations/size_config.dart';


class WadhuContent extends StatelessWidget {
  const WadhuContent(
      {Key? key,
      required this.img,
      required this.title,
      required this.subTitle,
      required this.index})
      : super(key: key);
  final String img;
  final String title;
  final String subTitle;
  final int index;

  @override
  Widget build(BuildContext context) {
    // print('Index $title');
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: index == 6 ? SizeConfig.screenHeight! * 0.14 : SizeConfig.screenHeight! * 0.14,
        ),
        Text('Step $index', style: AppStyles.stepTitle),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.04,
        ),
        Padding(
          padding: EdgeInsets.only(left: index == 6 ? SizeConfig.screenWidth! * 0.02 : 0 ) ,
          child: Image.asset(
            img,
            height: index == 6 ? SizeConfig.screenHeight! * 0.095 : SizeConfig.screenHeight! * 0.14,
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.02,
        ),
        Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black,
                fontFamily: 'Gomgom',
                fontSize: SizeConfig.screenHeight! * 0.021),

        ),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.016,
        ),
        Text(subTitle,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black,

                fontSize: SizeConfig.screenHeight! * 0.025)),
      ],
    );
  }
}
