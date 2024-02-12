import 'package:flutter/material.dart';
import 'package:islamic_kids/screens/basics_dua/basic_dua_home_screen.dart';
import 'package:islamic_kids/screens/emanyat_screen/emanyat_screen.dart';
import 'package:islamic_kids/screens/pillars_of_islam/pillars_of_islam.dart';
import 'package:islamic_kids/screens/qaida/qaida_home_screen.dart';
import 'package:islamic_kids/screens/surah/surah_home.dart';
import 'package:islamic_kids/screens/wadhu_screens/wadu_screen.dart';

import '../constants/app_colors.dart';
import '../constants/cutom_widgets.dart';
import 'kalmas/kalmas_home_screen.dart';
import 'nimaz_screens/namaz_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Image.asset(
            'assets/home_background.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomWidgets.customCard(
                        cardText: 'Wadhu',
                        height: 125,
                        width: 125,
                        firstColor: AppColors.kRedGradientDark,
                        iconPath: "assets/wadhu_home_screen.png",
                        secondColor: AppColors.kRedGradientLight,
                        onCardTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const WadhuScreen())));
                        }),
                    CustomWidgets.customCard(
                        cardText: 'Namaz',
                        height: 125,
                        width: 125,
                        firstColor: AppColors.kBlueGradientDark,
                        secondColor: AppColors.kBlueGradientLight,
                        iconPath: "assets/nimaz_home_screen.png",
                        onCardTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const NamazScreen())));
                        })
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomWidgets.customCard(
                        height: 125,
                        width: 125,
                        firstColor: AppColors.kGreenGradientDark,
                        secondColor: AppColors.kGreenGradientLight,
                        iconPath: "assets/pillars_home_screen.png",
                        cardText: 'Pillars of Islam',
                        onCardTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                                  builder: ((context) => const PillarsScreen())));
                        }),
                    CustomWidgets.customCard(
                        height: 125,
                        width: 125,
                        firstColor: AppColors.kPinkGradientDark,
                        secondColor: AppColors.kPinkGradientLight,
                        iconPath: "assets/emanyat_home_screen.png",
                        cardText: 'Emanyat',
                        onCardTap: () {
                          Navigator.of(context).push( MaterialPageRoute(
                                  builder: ((context) => const EmanyatScreen())));
                        }),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomWidgets.customCard(
                        height: 125,
                        width: 125,
                        firstColor: AppColors.kBlueGradientDark,
                        secondColor: AppColors.kBlueGradientLight,
                        iconPath: "assets/kalmas_home_screen.png",
                        cardText: '6 Kalmas',
                        onCardTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const KalmasHomeScreen())));
                        }),
                    CustomWidgets.customCard(
                        height: 125,
                        width: 125,
                        firstColor: AppColors.kRedGradientDark,
                        secondColor: AppColors.kRedGradientLight,
                        iconPath: "assets/dua_home_screen.png",
                        cardText: 'Basic Duas',
                        onCardTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const BasicDuaHomeScreen())));
                        }),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomWidgets.customCard(
                        height: 125,
                        width: 125,
                        firstColor: AppColors.kPinkGradientDark,
                        secondColor: AppColors.kPinkGradientLight,
                        iconPath: "assets/qaida_home_screen.png",
                        cardText: 'Noorani Qaida',
                        onCardTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const QaidaHomeScreen())));
                        }),
                    CustomWidgets.customCard(
                        height: 125,
                        width: 125,
                        firstColor: AppColors.kGreenGradientDark,
                        secondColor: AppColors.kGreenGradientLight,
                        iconPath: "assets/surah_home_screen.png",
                        cardText: '10 Surah',
                        onCardTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const SurahHomeScreen())));
                        }),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
