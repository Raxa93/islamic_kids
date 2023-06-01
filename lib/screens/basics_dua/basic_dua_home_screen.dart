import 'package:flutter/material.dart';
import 'package:islamic_kids/constants/app_strings.dart';
import 'package:islamic_kids/screens/basics_dua/mutilples_dua.dart';

import '../../configurations/size_config.dart';
import '../../constants/app_colors.dart';
import '../../constants/cutom_widgets.dart';
import '../kalmas/kalmas_details_screen.dart';

class BasicDuaHomeScreen extends StatelessWidget {
  const BasicDuaHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Container(
          decoration: const BoxDecoration(
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
              iconTheme: const IconThemeData(
                color: Colors.black,
              ),
            ),
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    CustomWidgets.kalmasCard(
                        firstColor: AppColors.kFirstKalmaGradientDark,
                        secondColor: AppColors.kFirstKalmaGradientLight,
                        iconPath: (''),
                        title: 'Dua Before and After Sleep',
                        subTitle: 'سونے سے پہلے اور بعد کی دعا',
                        height: SizeConfig.screenHeight! * 0.1,
                        width: SizeConfig.screenWidth! * 0.8,
                        hasIcon: false,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: ((context) =>   MultiplesDuaScreen(
                            isMultipleDua: true,
                            firstDuaName: AppStrings.basicsDua[0]['Name'].toString(),
                            firstDuaUrduName: AppStrings.basicsDua[0]['UrduName'].toString(),
                            firstDua: AppStrings.basicsDua[0]['Dua'].toString(),
                            firstEnglish: AppStrings.basicsDua[0]['English'].toString(),
                            firstUrdu: AppStrings.basicsDua[0]['Urdu'].toString(),

                            secondDuaName: AppStrings.basicsDua[1]['Name'].toString(),
                            secondDuaUrduName: AppStrings.basicsDua[1]['UrduName'].toString(),
                            secondUrdu: AppStrings.basicsDua[1]['Urdu'].toString(),
                            secondDua: AppStrings.basicsDua[1]['Dua'].toString(),
                            secondEnglish: AppStrings.basicsDua[1]['English'].toString(),




                          ))));
                        }),
                    CustomWidgets.kalmasCard(
                        firstColor: AppColors.kSecondKalmaGradientDark,
                        secondColor: AppColors.kSecondKalmaGradientLight,
                        iconPath: (''),
                        title: 'Dua Before and After Eating',
                        subTitle: 'کھانے سے پہلے اور بعد کی دعا',
                        height: SizeConfig.screenHeight! * 0.1,
                        width: SizeConfig.screenWidth! * 0.8,
                        hasIcon: false,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: ((context) =>   MultiplesDuaScreen(
                            isMultipleDua: true,
                            firstDuaName: AppStrings.basicsDua[2]['Name'].toString(),
                            firstDuaUrduName: AppStrings.basicsDua[2]['UrduName'].toString(),
                            firstDua: AppStrings.basicsDua[2]['Dua'].toString(),
                            firstEnglish: AppStrings.basicsDua[2]['English'].toString(),
                            firstUrdu: AppStrings.basicsDua[2]['Urdu'].toString(),

                            secondDuaName: AppStrings.basicsDua[3]['Name'].toString(),
                            secondDuaUrduName: AppStrings.basicsDua[3]['UrduName'].toString(),
                            secondUrdu: AppStrings.basicsDua[3]['Urdu'].toString(),
                            secondDua: AppStrings.basicsDua[3]['Dua'].toString(),
                            secondEnglish: AppStrings.basicsDua[3]['English'].toString(),
                          ))));
                        }),
                    CustomWidgets.kalmasCard(
                        firstColor: AppColors.kThirdKalmaGradientDark,
                        secondColor: AppColors.kThirdKalmaGradientLight,
                        iconPath: (''),
                        title: 'Dua Before and After Drinking water',
                        subTitle: 'پانی پینے سے پہلے اور بعد کی دعا',
                        height: SizeConfig.screenHeight! * 0.1,
                        width: SizeConfig.screenWidth! * 0.8,
                        hasIcon: false,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>   MultiplesDuaScreen(
                                    isMultipleDua: true,
                                    firstDuaName: AppStrings.basicsDua[4]['Name'].toString(),
                                    firstDuaUrduName: AppStrings.basicsDua[4]['UrduName'].toString(),
                                    firstDua: AppStrings.basicsDua[4]['Dua'].toString(),
                                    firstEnglish: AppStrings.basicsDua[4]['English'].toString(),
                                    firstUrdu: AppStrings.basicsDua[4]['Urdu'].toString(),

                                    secondDuaName: AppStrings.basicsDua[5]['Name'].toString(),
                                    secondDuaUrduName: AppStrings.basicsDua[5]['UrduName'].toString(),
                                    secondUrdu: AppStrings.basicsDua[5]['Urdu'].toString(),
                                    secondDua: AppStrings.basicsDua[5]['Dua'].toString(),
                                    secondEnglish: AppStrings.basicsDua[5]['English'].toString(),
                                  ))));
                        }),
                    CustomWidgets.kalmasCard(
                        firstColor: AppColors.kFifthKalmaGradientDark,
                        secondColor: AppColors.kFifthKalmaGradientLight,
                        iconPath: (''),
                        title: 'Dua Before & after Ablution',
                        subTitle: 'وضو سے پہلے اور بعد کی دعا',
                        height: SizeConfig.screenHeight! * 0.1,
                        width: SizeConfig.screenWidth! * 0.8,
                        hasIcon: false,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>   MultiplesDuaScreen(
                                    isMultipleDua: true,
                                    firstDuaName: AppStrings.basicsDua[6]['Name'].toString(),
                                    firstDuaUrduName: AppStrings.basicsDua[6]['UrduName'].toString(),
                                    firstDua: AppStrings.basicsDua[6]['Dua'].toString(),
                                    firstEnglish: AppStrings.basicsDua[6]['English'].toString(),
                                    firstUrdu: AppStrings.basicsDua[6]['Urdu'].toString(),

                                    secondDuaName: AppStrings.basicsDua[7]['Name'].toString(),
                                    secondDuaUrduName: AppStrings.basicsDua[7]['UrduName'].toString(),
                                    secondUrdu: AppStrings.basicsDua[7]['Urdu'].toString(),
                                    secondDua: AppStrings.basicsDua[7]['Dua'].toString(),
                                    secondEnglish: AppStrings.basicsDua[7]['English'].toString(),
                                  ))));
                        }),
                    CustomWidgets.kalmasCard(
                        firstColor: AppColors.kFourthKalmaGradientLight,
                        secondColor: AppColors.kFourthKalmaGradientDark,
                        iconPath: (''),
                        title: 'Dua when drinking Milk',
                        subTitle: 'دودھ پیتے وقت کی دعا',
                        height: SizeConfig.screenHeight! * 0.1,
                        width: SizeConfig.screenWidth! * 0.8,
                        hasIcon: false,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>   MultiplesDuaScreen(
                                    isMultipleDua: false,
                                    firstDuaName: AppStrings.basicsDua[8]['Name'].toString(),
                                    firstDuaUrduName: AppStrings.basicsDua[8]['UrduName'].toString(),
                                    firstDua: AppStrings.basicsDua[8]['Dua'].toString(),
                                    firstEnglish: AppStrings.basicsDua[8]['English'].toString(),
                                    firstUrdu: AppStrings.basicsDua[8]['Urdu'].toString(),

                                  ))));
                        }),
                    CustomWidgets.kalmasCard(
                        firstColor: AppColors.kSixthKalmaGradientDark,
                        secondColor: AppColors.kSixthKalmaGradientLight,
                        iconPath: (''),
                        title: 'Dua During Ablution',
                        subTitle: 'وضو کے دوران دعا',
                        height: SizeConfig.screenHeight! * 0.1,
                        width: SizeConfig.screenWidth! * 0.8,
                        hasIcon: false,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>   MultiplesDuaScreen(
                                    isMultipleDua: false,
                                    firstDuaName: AppStrings.basicsDua[9]['Name'].toString(),
                                    firstDuaUrduName: AppStrings.basicsDua[9]['UrduName'].toString(),
                                    firstDua: AppStrings.basicsDua[9]['Dua'].toString(),
                                    firstEnglish: AppStrings.basicsDua[9]['English'].toString(),
                                    firstUrdu: AppStrings.basicsDua[9]['Urdu'].toString(),

                                  ))));
                        }),
                    CustomWidgets.kalmasCard(
                        firstColor: AppColors.kSixthKalmaGradientDark,
                        secondColor: AppColors.kSixthKalmaGradientLight,
                        iconPath: (''),
                        title: 'Dua, Looking Mirror',
                        subTitle: 'آئینے میں دیکھتے وقت کی دعا',
                        height: SizeConfig.screenHeight! * 0.1,
                        width: SizeConfig.screenWidth! * 0.8,
                        hasIcon: false,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>   MultiplesDuaScreen(
                                    isMultipleDua: false,
                                    firstDuaName: AppStrings.basicsDua[10]['Name'].toString(),
                                    firstDuaUrduName: AppStrings.basicsDua[10]['UrduName'].toString(),
                                    firstDua: AppStrings.basicsDua[10]['Dua'].toString(),
                                    firstEnglish: AppStrings.basicsDua[10]['English'].toString(),
                                    firstUrdu: AppStrings.basicsDua[10]['Urdu'].toString(),

                                  ))));
                        }),
                    CustomWidgets.kalmasCard(
                        firstColor: AppColors.kSixthKalmaGradientDark,
                        secondColor: AppColors.kSixthKalmaGradientLight,
                        iconPath: (''),
                        title: 'Dua, After sneezing',
                        subTitle: 'چھینک کے بعد کی دعا',
                        height: SizeConfig.screenHeight! * 0.1,
                        width: SizeConfig.screenWidth! * 0.8,
                        hasIcon: false,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>   MultiplesDuaScreen(
                                    isMultipleDua: false,
                                    firstDuaName: AppStrings.basicsDua[11]['Name'].toString(),
                                    firstDuaUrduName: AppStrings.basicsDua[11]['UrduName'].toString(),
                                    firstDua: AppStrings.basicsDua[11]['Dua'].toString(),
                                    firstEnglish: AppStrings.basicsDua[11]['English'].toString(),
                                    firstUrdu: AppStrings.basicsDua[11]['Urdu'].toString(),

                                  ))));
                        }),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
