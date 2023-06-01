// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:islamic_kids/configurations/size_config.dart';

class NimazDetailScreen extends StatelessWidget {
  String? detailText ;
  int? index ;
   NimazDetailScreen({Key? key,required this.detailText,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/namaz_screen_detail.png"),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: SizeConfig.screenHeight! * 0.09),
                Text('Step ${index! +1} Details',style: TextStyle( fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.screenHeight! * 0.035,
                    fontFamily: 'Gomgom',
                    color: const Color.fromRGBO(94, 25, 4, 1)), ),
                SizedBox(height: SizeConfig.screenHeight! * 0.09),
                Container(
                  height: SizeConfig.screenHeight! * 0.4,
                  width: SizeConfig.screenWidth! * 0.8,
                  child: Text(
                    detailText!.trim().toString(),
                    style: TextStyle(

                    fontSize: SizeConfig.screenHeight! * 0.025
                  ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
