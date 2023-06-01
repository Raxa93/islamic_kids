

import 'package:flutter/material.dart';

import '../configurations/size_config.dart';

class AppStyles{
  static  TextStyle headline1 = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w300,
    fontSize: SizeConfig.screenHeight! * 0.05,
  );
  static  TextStyle headline2 = TextStyle(

    fontWeight: FontWeight.w400,
    fontSize: SizeConfig.screenHeight! * 0.027,
  );
  static  TextStyle headline3 = TextStyle(

    fontWeight: FontWeight.w600,
    fontSize: SizeConfig.screenHeight! * 0.025,
  );
  static const TextStyle headline4 = TextStyle(

    fontWeight: FontWeight.w400,
    fontSize: 16,
  );
  static const TextStyle bodyText1 = TextStyle(

    fontWeight: FontWeight.w300,
    fontSize: 16,
  );
  static const TextStyle bodyText2 = TextStyle(

    fontWeight: FontWeight.w300,
    fontSize: 14,
  );
  static const TextStyle button = TextStyle(

    fontWeight: FontWeight.w400,
    fontSize: 22,
  );

  static final kCardTextStyle = TextStyle(
      color: Colors.black,
      fontFamily: 'Gomgom',
      fontSize: SizeConfig.screenHeight! * 0.03);

  static final stepTitle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: SizeConfig.screenHeight! * 0.027,
      fontFamily: 'Gomgom',
      color: const Color.fromRGBO(94, 25, 4, 1)
  );


  static const kRoundedTContainer = BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ));
}