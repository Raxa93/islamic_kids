import 'package:flutter/material.dart';
import 'package:islamic_kids/configurations/size_config.dart';
import 'package:islamic_kids/constants/app_colors.dart';
import 'package:islamic_kids/constants/cutom_widgets.dart';
import 'package:islamic_kids/screens/kalmas/kalmas_details_screen.dart';

class KalmasHomeScreen extends StatefulWidget {
  const KalmasHomeScreen({Key? key}) : super(key: key);

  @override
  State<KalmasHomeScreen> createState() => _KalmasHomeScreenState();
}

class _KalmasHomeScreenState extends State<KalmasHomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.07),
              CustomWidgets.kalmasCard(
                  firstColor: AppColors.kFirstKalmaGradientDark,
                  secondColor: AppColors.kFirstKalmaGradientLight,
                  iconPath: ('assets/one.png'),
                  title: 'First Kalma: Taybba',
                  subTitle: 'اول کلمہ توحید',
                  height: SizeConfig.screenHeight! * 0.1,
                  width: SizeConfig.screenWidth! * 0.75,
                  hasIcon: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => KalmasDetail(index: 0))));
                  }),
              CustomWidgets.kalmasCard(
                  firstColor: AppColors.kSecondKalmaGradientDark,
                  secondColor: AppColors.kSecondKalmaGradientLight,
                  iconPath: ('assets/two.png'),
                  title: 'Second Kalma: Shahadaat',
                  subTitle: 'دوسرا کلمہ شہادت',
                  height: SizeConfig.screenHeight! * 0.1,
                  width: SizeConfig.screenWidth! * 0.75,
                  hasIcon: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => KalmasDetail(index: 1))));
                  }),
              CustomWidgets.kalmasCard(
                  firstColor: AppColors.kThirdKalmaGradientDark,
                  secondColor: AppColors.kThirdKalmaGradientLight,
                  iconPath: ('assets/three.png'),
                  title: 'Third Kalma: Tamjeed',
                  subTitle: 'تیسرا کلمہ تمجید',
                  height: SizeConfig.screenHeight! * 0.1,
                  width: SizeConfig.screenWidth! * 0.75,
                  hasIcon: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => KalmasDetail(
                                  index: 2,
                                ))));
                  }),
              CustomWidgets.kalmasCard(
                  firstColor: AppColors.kFourthKalmaGradientLight,
                  secondColor: AppColors.kFourthKalmaGradientDark,
                  iconPath: ('assets/four.png'),
                  title: 'Fourth Kalma: Tahueed',
                  subTitle: 'چوتھا کلمہ توحید',
                  height: SizeConfig.screenHeight! * 0.1,
                  width: SizeConfig.screenWidth! * 0.75,
                  hasIcon: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => KalmasDetail(
                                  index: 3,
                                ))));
                  }),
              CustomWidgets.kalmasCard(
                  firstColor: AppColors.kFifthKalmaGradientDark,
                  secondColor: AppColors.kFifthKalmaGradientLight,
                  iconPath: ('assets/five.png'),
                  title: 'Fifth kalma: Astagfar',
                  subTitle: 'پانچواں کلمہ استغفار',
                  height: SizeConfig.screenHeight! * 0.1,
                  width: SizeConfig.screenWidth! * 0.75,
                  hasIcon: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => KalmasDetail(
                                  index: 4,
                                ))));
                  }),
              CustomWidgets.kalmasCard(
                  firstColor: AppColors.kSixthKalmaGradientDark,
                  secondColor: AppColors.kSixthKalmaGradientLight,
                  iconPath: ('assets/six.png'),
                  title: 'Sixth Kalma: Radde Kuffar',
                  subTitle: 'چھٹا کلمہ رد کفر',
                  height: SizeConfig.screenHeight! * 0.1,
                  width: SizeConfig.screenWidth! * 0.75,
                  hasIcon: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => KalmasDetail(
                                  index: 5,
                                ))));
                  }),
            ],
          ),
        ),
      ),
    ));
  }
}
