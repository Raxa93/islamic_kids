
import 'package:flutter/material.dart';
import 'package:islamic_kids/configurations/size_config.dart';
import 'package:islamic_kids/constants/app_colors.dart';
import 'package:islamic_kids/constants/app_strings.dart';

class KalmasDetail extends StatelessWidget {
  int index;
   KalmasDetail({Key? key,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/kalmas_home.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              // iconTheme: const IconThemeData(
              //   color: Colors.black,
              // ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SizedBox(height: SizeConfig.screenHeight! * 0.05),
                          Text(AppStrings.kalmasData[index]['Name']!,style: TextStyle(
                            fontSize: index == 4 || index == 5 ?SizeConfig.screenHeight! * 0.03 : SizeConfig.screenHeight! * 0.03,
                            color: AppColors.kNavyBlueColor,
                            fontFamily: 'Gomgom'
                          ),),
                          Text(AppStrings.kalmasData[index]['UrduName']!,style: TextStyle(
                            fontSize:index == 4 || index == 5 ?SizeConfig.screenHeight! * 0.03 : SizeConfig.screenHeight! * 0.05,
                            fontWeight: FontWeight.bold,
                            color: AppColors.kNavyBlueColor,
                          ),),
                          // SizedBox(height: SizeConfig.screenHeight! * 0.04),
                          Text(AppStrings.kalmasData[index]['Dua']!,
                            textAlign: TextAlign.center
                            ,style: TextStyle(
                            fontSize: index == 4 || index == 5 ?SizeConfig.screenHeight! * 0.035 :SizeConfig.screenHeight! * 0.049,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text(AppStrings.kalmasData[index]['Urdu']!,
                            textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: index == 4 || index == 5 ?SizeConfig.screenHeight! * 0.02 :SizeConfig.screenHeight! * 0.025,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          // SizedBox(height: SizeConfig.screenHeight! * 0.05),
                          // Container(
                          //   color: Colors.black.withOpacity(0.1),
                          //   child: Text(AppStrings.kalmasData[index]['English']!,
                          //     textAlign: TextAlign.center,
                          //     style: TextStyle(
                          //     fontSize: SizeConfig.screenHeight! * 0.03,
                          //       fontFamily: 'Gomgom'
                          //   ),),
                          // ),
                ],
              ),
            ),
          ),
        )

    );
  }
}
