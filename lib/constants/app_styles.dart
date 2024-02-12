

import 'package:flutter/material.dart';


class AppStyles{
  static  TextStyle headline1 = const TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w300,
    fontSize: 22,
  );
  static  TextStyle headline2 = const TextStyle(

    fontWeight: FontWeight.w400,
    fontSize: 17,
  );
  static  TextStyle headline3 = const TextStyle(

    fontWeight: FontWeight.w600,
    fontSize: 18,
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

  static const kCardTextStyle = TextStyle(
      color: Colors.black,
      fontFamily: 'Gomgom',
      fontSize: 17);

  static const stepTitle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      fontFamily: 'Gomgom',
      color: Color.fromRGBO(94, 25, 4, 1)
  );


  static const kRoundedTContainer = BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ));
}