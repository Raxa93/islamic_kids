import 'package:flutter/material.dart';
import 'package:islamic_kids/screens/qaida/qiada_sabaq_screen.dart';

import '../../constants/app_colors.dart';
import '../../constants/cutom_widgets.dart';

class QaidaHomeScreen extends StatelessWidget {
  const QaidaHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            body: Align(
              alignment: Alignment.center,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  CustomWidgets.QaidaCard(
                      firstColor: AppColors.kFirstKalmaGradientDark,
                      secondColor: AppColors.kFirstKalmaGradientLight,
                      iconPath: (''),
                      title: 'Chapter 1',
                      subTitle: 'سبق نمبر 1',
                      height: 70,
                      width: 200,
                      hasIcon: false,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>   const QaidaSabaqScreen(imageIndex: 0))));
                      }),
                  CustomWidgets.QaidaCard(
                      firstColor: AppColors.kSecondKalmaGradientDark,
                      secondColor: AppColors.kSecondKalmaGradientLight,
                      iconPath: (''),
                      title: 'Chapter 2',
                      subTitle: 'سبق نمبر 2',
                      height: 70,
                      width: 200,
                      hasIcon: false,
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>   MultiplesDuaScreen(
                        Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>   const QaidaSabaqScreen(imageIndex: 1))));
                      }),
                  CustomWidgets.QaidaCard(
                      firstColor: AppColors.kThirdKalmaGradientDark,
                      secondColor: AppColors.kThirdKalmaGradientLight,
                      iconPath: (''),
                      title: 'Chapter 3',
                      subTitle: 'سبق نمبر 3',
                      height: 70.0,
                      width: 200.0,
                      hasIcon: false,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>   const QaidaSabaqScreen(imageIndex: 2))));
                      }),
                  CustomWidgets.QaidaCard(
                      firstColor: AppColors.kGreenGradientDark,
                      secondColor: AppColors.kGreenGradientLight,
                      iconPath: (''),
                      title: 'Chapter 4',
                      subTitle: 'سبق نمبر 4',
                      height: 70.0,
                      width: 200.0,
                      hasIcon: false,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>   const QaidaSabaqScreen(imageIndex: 3))));
                      }),


                ],
              ),
            )

          ),
        ));
  }
}
