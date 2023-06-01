import 'package:flutter/material.dart';
import 'package:islamic_kids/constants/app_strings.dart';

import '../../configurations/size_config.dart';
import '../../constants/app_styles.dart';

class QaidaSabaqScreen extends StatelessWidget {
  int imageIndex;

   QaidaSabaqScreen({Key? key,required this.imageIndex}) : super(key: key);

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
          body: Center(
            child:   Flexible(
              //
              // decoration: AppStyles.kRoundedTContainer.copyWith(color:Colors.white.withOpacity(0.8) ),
              child: Padding(
                padding:  EdgeInsets.all(SizeConfig.screenHeight! * 0.05),
                child: Image.asset(AppStrings.qaidaPath[imageIndex]['Qaida_Path'].toString()),
              )
            ),
          ),
        ),
      ),
    );
  }
}
