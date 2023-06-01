import 'package:flutter/material.dart';

import '../configurations/size_config.dart';


class CustomWidgets {
  static Widget customCard(
      {required var firstColor,
        required var height,
        required var width,
      required var secondColor,
      required String iconPath,
      required String cardText,
      required var onCardTap}) {
    return InkWell(
      onTap: onCardTap,
      child: Container(
        height: height,
        width: width,
        // color: Colors.red,

        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [firstColor, secondColor],
            ),
            borderRadius: BorderRadius.circular(13),
            border: Border.all(color: Colors.grey.withOpacity(0.5))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              iconPath,
              width: SizeConfig.screenWidth! * 0.15,
              height: SizeConfig.screenHeight! * 0.08,
            ),
            Text(
              cardText,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Gomgom',
                  fontSize: SizeConfig.screenHeight! * 0.022),
            )
          ],
        ),
      ),
    );
  }

  static Widget kalmasCard(
      {required var firstColor,

      required var secondColor,
      required String iconPath,
      required String title,
      required String subTitle,
        required var height,
        required var width,
        required bool hasIcon,
      required var onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
         margin: EdgeInsets.all(SizeConfig.screenWidth! * 0.01),
        height:height ,
        width: width ,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [firstColor, secondColor],
            ),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

          hasIcon ?  Image.asset(iconPath,width: SizeConfig.screenWidth! * 0.18,height: SizeConfig.screenHeight! * 0.045)

              : SizedBox.shrink(),
            SizedBox(width: SizeConfig.screenWidth! * 0.02),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title,style: TextStyle(
                  fontSize: SizeConfig.screenHeight! * 0.03,
                  fontFamily: 'Gomgom'
                ),), Text(subTitle,style: TextStyle(fontSize: SizeConfig.screenHeight! * 0.025),)],
            )
          ],
        ),
      ),
    );
  }

  static Widget QaidaCard(
      {required var firstColor,
        required var secondColor,
        required String iconPath,
        required String title,
        required String subTitle,
        required var height,
        required var width,
        required bool hasIcon,
        required var onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(SizeConfig.screenWidth! * 0.05),
        height:height ,
        width: width ,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [firstColor, secondColor],
            ),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            hasIcon ?  Icon(
              Icons.add,
              color: Colors.red,
              size: 50,
            ) : SizedBox.shrink(),
            // SizedBox(width: SizeConfig.screenWidth! * 0.08),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title,style: TextStyle(
                    fontSize: SizeConfig.screenHeight! * 0.04,
                    fontFamily: 'Gomgom'
                ),), Text(subTitle,style: TextStyle(fontSize: SizeConfig.screenHeight! * 0.03),)],
            )
          ],
        ),
      ),
    );
  }
}
