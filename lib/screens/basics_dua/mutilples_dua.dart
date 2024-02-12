import 'package:flutter/material.dart';
import 'package:islamic_kids/constants/app_styles.dart';


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
           mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Container(
                // height: 270,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: AppStyles.kRoundedTContainer.copyWith(color:Colors.white.withOpacity(0.8) ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(height: 10),
                    Text(firstDuaName,style: AppStyles.headline3),
                    const SizedBox(height: 20),
                    Text(firstDuaUrduName,style: AppStyles.headline3),
                    const SizedBox(height: 10),
                    const Divider(thickness: 2,color: Colors.blueGrey,indent: 20,endIndent: 30),
                    const SizedBox(height: 10),
                    Text(firstDua,style: AppStyles.headline2),
                    const SizedBox(height: 10),
                    const Divider(thickness: 2,color: Colors.blueGrey,indent: 20,endIndent: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(firstEnglish,style: AppStyles.headline4,textAlign: TextAlign.center),
                    ),
                    const SizedBox(height: 10),
                    Text(firstUrdu,style: AppStyles.headline4,textAlign: TextAlign.center),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Container(
                // height: SizeConfig.screenHeight! * 0.4,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: AppStyles.kRoundedTContainer.copyWith(color:Colors.white.withOpacity(0.8) ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    Text(secondDuaName!,style: AppStyles.headline3),
                    const SizedBox(height: 20),
                    Text(secondDuaUrduName!,style: AppStyles.headline3),
                    const SizedBox(height: 10),
                    const Divider(thickness: 2,color: Colors.blueGrey,indent: 20,endIndent: 30),
                    const SizedBox(height: 10),
                    Text(secondDua!,style: AppStyles.headline2,textAlign: TextAlign.center),
                    const SizedBox(height: 10),
                    const Divider(thickness: 2,color: Colors.blueGrey,indent: 20,endIndent: 30),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(secondEnglish!,style: AppStyles.headline4,textAlign: TextAlign.center),
                    ),
                    const SizedBox(height: 10),
                    Text(secondUrdu!,style: AppStyles.headline4,textAlign: TextAlign.center),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ) : Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: AppStyles.kRoundedTContainer.copyWith(color:Colors.white.withOpacity(0.8) ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Text(firstDuaName,style: AppStyles.headline3),
                const SizedBox(height: 20),
                Text(firstDuaUrduName,style: AppStyles.headline3),
                const SizedBox(height: 20),
                const Divider(thickness: 2,color: Colors.blueGrey,indent: 20,endIndent: 30),
                const SizedBox(height: 20),
                Text(firstDua,style: AppStyles.headline2,textAlign: TextAlign.center),
                const SizedBox(height: 20),
                const Divider(thickness: 2,color: Colors.blueGrey,indent: 20,endIndent: 30),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(firstEnglish,style: AppStyles.headline4,textAlign: TextAlign.center),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(firstUrdu,style: AppStyles.headline4,textAlign: TextAlign.center),
                ),

              ],
            ),
          ),
        ),
      ),
    ));
  }
}
