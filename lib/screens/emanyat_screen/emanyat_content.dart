
import 'package:flutter/material.dart';
import 'package:islamic_kids/configurations/size_config.dart';

class EmanyatContent extends StatelessWidget {
  String emanyatName ;
  String emanyatDua ;
  String emanyatUrdu ;
  String emanyatEnglish ;
   EmanyatContent({Key? key,required this.emanyatName,required this.emanyatDua,required this.emanyatEnglish,required this.emanyatUrdu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth! *0.08),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: SizeConfig.screenHeight! * 0.085),
          Text(emanyatName,style: TextStyle(
            fontSize: SizeConfig.screenHeight! * 0.033,
            color: Colors.brown,
            fontFamily: 'Gomgom'
          ),),
          SizedBox(height: SizeConfig.screenHeight! * 0.1),
          Text(
              textAlign: TextAlign.justify,
              emanyatDua,
              style: TextStyle(
                fontWeight: FontWeight.bold,
            fontSize: SizeConfig.screenHeight! * 0.04
          )),
          SizedBox(height: SizeConfig.screenHeight! * 0.02),
          Text(emanyatUrdu,
            textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                  fontSize: SizeConfig.screenHeight! * 0.03
              )
          ),
          SizedBox(height: SizeConfig.screenHeight! * 0.02),
          Text(emanyatEnglish,textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 0.1,
              fontSize: SizeConfig.screenHeight! * 0.025,fontFamily: 'Gomgom'),),

        ],

      ),
    );
  }
}
