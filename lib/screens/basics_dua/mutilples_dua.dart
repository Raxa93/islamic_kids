import 'package:flutter/material.dart';
import 'package:islamic_kids/configurations/size_config.dart';
import 'package:islamic_kids/constants/app_styles.dart';

import '../../constants/app_strings.dart';

class MultiplesDuaScreen extends StatelessWidget {

  bool isMultipleDua;
  String firstDuaName ;
  String firstDuaUrduName ;
  String firstDua;
  String firstEnglish;
  String firstUrdu;
  String? secondDuaName;
  String? secondDuaUrduName;
  String? secondDua;
  String? secondEnglish;
  String? secondUrdu;
   MultiplesDuaScreen({Key? key,
     required this.isMultipleDua,
    required this.firstDuaName,
     required this.firstDua,
     required this.firstDuaUrduName,
      this.secondDuaUrduName,
     required this.firstEnglish,
     required this.firstUrdu,
      this.secondDuaName,
      this.secondDua,
      this.secondEnglish,
      this.secondUrdu
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(child: Container(
      decoration:  const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/basics_dua_home.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme:  const IconThemeData(
            color: Colors.black,
          ),
        ),
        body: Center(
          child: isMultipleDua ? Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: SizeConfig.screenHeight! * 0.35,
                width: SizeConfig.screenWidth! * 0.8,
                decoration: AppStyles.kRoundedTContainer.copyWith(color:Colors.white.withOpacity(0.8) ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(firstDuaName,style: AppStyles.headline3),
                    Text(firstDuaUrduName,style: AppStyles.headline3),
                    Divider(thickness: 3,color: Colors.blueGrey,indent: SizeConfig.screenWidth! * 0.05,endIndent: SizeConfig.screenWidth! * 0.05),
                    Text(firstDua,style: AppStyles.headline2),
                    Divider(thickness: 3,color: Colors.blueGrey,indent: SizeConfig.screenWidth! * 0.1,endIndent: SizeConfig.screenWidth! * 0.1),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(firstEnglish,style: AppStyles.headline4,textAlign: TextAlign.center),
                    ),
                    Text(firstUrdu,style: AppStyles.headline4,textAlign: TextAlign.center),

                  ],
                ),
              ),
              // SizedBox(height: SizeConfig.screenHeight! * 0.04),
              Container(
                height: SizeConfig.screenHeight! * 0.4,
                width: SizeConfig.screenWidth! * 0.8,
                decoration: AppStyles.kRoundedTContainer.copyWith(color:Colors.white.withOpacity(0.8) ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(secondDuaName!,style: AppStyles.headline3),
                    Text(secondDuaUrduName!,style: AppStyles.headline3),
                    Divider(thickness: 3,color: Colors.blueGrey,indent: SizeConfig.screenWidth! * 0.05,endIndent: SizeConfig.screenWidth! * 0.05),
                    Text(secondDua!,style: AppStyles.headline2,textAlign: TextAlign.center),
                    Divider(thickness: 3,color: Colors.blueGrey,indent: SizeConfig.screenWidth! * 0.1,endIndent: SizeConfig.screenWidth! * 0.1),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(secondEnglish!,style: AppStyles.headline4,textAlign: TextAlign.center),
                    ),
                    Text(secondUrdu!,style: AppStyles.headline4,textAlign: TextAlign.center),

                  ],
                ),
              ),
            ],
          ) : Container(
            height: SizeConfig.screenHeight! * 0.6,
            width: SizeConfig.screenWidth! * 0.8,
            decoration: AppStyles.kRoundedTContainer.copyWith(color:Colors.white.withOpacity(0.8) ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(firstDuaName,style: AppStyles.headline3),
                Text(firstDuaUrduName,style: AppStyles.headline3),
                Divider(thickness: 3,color: Colors.blueGrey,indent: SizeConfig.screenWidth! * 0.05,endIndent: SizeConfig.screenWidth! * 0.05),
                Text(firstDua,style: AppStyles.headline2,textAlign: TextAlign.center),
                Divider(thickness: 3,color: Colors.blueGrey,indent: SizeConfig.screenWidth! * 0.1,endIndent: SizeConfig.screenWidth! * 0.1),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(firstEnglish,style: AppStyles.headline4,textAlign: TextAlign.center),
                ),
                Text(firstUrdu,style: AppStyles.headline4,textAlign: TextAlign.center),

              ],
            ),
          ),
        ),
      ),
    ));
  }
}
