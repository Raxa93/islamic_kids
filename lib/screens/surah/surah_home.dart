import 'package:flutter/material.dart';
import 'package:islamic_kids/screens/surah/surah_detail.dart';

import '../../configurations/size_config.dart';
import '../../constants/app_colors.dart';
import '../../constants/cutom_widgets.dart';

class SurahHomeScreen extends StatefulWidget {
  const SurahHomeScreen({Key? key}) : super(key: key);

  @override
  State<SurahHomeScreen> createState() => _SurahHomeScreenState();
}

class _SurahHomeScreenState extends State<SurahHomeScreen> {
  dynamic currentIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/surah_home.png"),
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
          body: Column(
            children: [
              Container(
                height: SizeConfig.screenHeight! * 0.75,
                child: Align(
                    alignment: Alignment.center,
                    child: PageView.builder(
                      controller: _controller,
                      itemBuilder: (context, position) {
                        return position == 0
                            ? firstScreenWidget()
                            : secondScreenWidget();
                      },
                      onPageChanged: (var currentPosition) {
                        setState(() {
                          currentIndex = currentPosition;
                        });
                        print('Current position ${currentIndex}');
                      },
                    )),
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.002),
              currentIndex == 0
                  ? InkWell(
                      onTap: () {
                        _controller?.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.linear,
                        );
                      },
                      child: Image.asset(
                        'assets/arrow_forward.png',
                        height: SizeConfig.screenHeight! * 0.16,
                        width: SizeConfig.screenWidth! * 0.24,
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        _controller?.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.linear,
                        );
                      },
                      child: Image.asset(
                        'assets/arrow_back.png',
                        height: SizeConfig.screenHeight! * 0.16,
                        width: SizeConfig.screenWidth! * 0.24,
                      ),
                    )
            ],
          )),
    ));
  }

  firstScreenWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: SizeConfig.screenHeight! * 0.1),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kFirstKalmaGradientDark,
            secondColor: AppColors.kFirstKalmaGradientLight,
            iconPath: ('assets/one.png'),
            title: 'Surah Fil',
            subTitle: '',
            height: SizeConfig.screenHeight! * 0.1,
            width: SizeConfig.screenWidth! * 0.7,
            hasIcon: true,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) =>   SurahDetailScreen(imagePath: 'assets/surah_fil.png'))));
            }),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kSecondKalmaGradientDark,
            secondColor: AppColors.kSecondKalmaGradientLight,
            iconPath: ('assets/two.png'),
            title: 'Surah Quraysh',
            subTitle: '',
            height: SizeConfig.screenHeight! * 0.1,
            width: SizeConfig.screenWidth! * 0.7,
            hasIcon: true,
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: ((context) =>   MultiplesDuaScreen(
               Navigator.push(context, MaterialPageRoute(builder: ((context) =>   SurahDetailScreen(imagePath: 'assets/surah_quresh.png'))));
            }),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kPinkGradientDark,
            secondColor: AppColors.kPinkGradientLight,
            iconPath: ('assets/three.png'),
            title: 'Surah Maun',
            subTitle: 'سبق نمبر 3',
            height: SizeConfig.screenHeight! * 0.1,
            width: SizeConfig.screenWidth! * 0.7,
            hasIcon: true,
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: ((context) =>   QaidaSabaqScreen(imageIndex: 2))));
              Navigator.push(context, MaterialPageRoute(builder: ((context) =>   SurahDetailScreen(imagePath: 'assets/surah_maun.png'))));
            }),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kGreenGradientDark,
            secondColor: AppColors.kGreenGradientLight,
            iconPath: ('assets/four.png'),
            title: 'Surah Kawthar',
            subTitle: '',
            height: SizeConfig.screenHeight! * 0.1,
            width: SizeConfig.screenWidth! * 0.7,
            hasIcon: true,
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: ((context) =>   QaidaSabaqScreen(imageIndex: 3))));
              Navigator.push(context, MaterialPageRoute(builder: ((context) =>   SurahDetailScreen(imagePath: 'assets/surah_kausar.png'))));
            }),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kThirdKalmaGradientDark,
            secondColor: AppColors.kThirdKalmaGradientLight,
            iconPath: ('assets/five.png'),
            title: 'Surah Kafirun',
            subTitle: '',
            height: SizeConfig.screenHeight! * 0.1,
            width: SizeConfig.screenWidth! * 0.7,
            hasIcon: true,
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: ((context) =>   QaidaSabaqScreen(imageIndex: 3))));
              Navigator.push(context, MaterialPageRoute(builder: ((context) =>   SurahDetailScreen(imagePath: 'assets/surah_kafarun.png'))));
            }),
      ],
    );
  }

  secondScreenWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: SizeConfig.screenHeight! * 0.1),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kFirstKalmaGradientDark,
            secondColor: AppColors.kFirstKalmaGradientLight,
            iconPath: ('assets/six.png'),
            title: 'Surah Nasar',
            subTitle: '',
            height: SizeConfig.screenHeight! * 0.1,
            width: SizeConfig.screenWidth! * 0.7,
            hasIcon: true,
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: ((context) =>   QaidaSabaqScreen(imageIndex: 0))));
              Navigator.push(context, MaterialPageRoute(builder: ((context) =>   SurahDetailScreen(imagePath: 'assets/surah_nasar.png'))));
            }),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kSecondKalmaGradientDark,
            secondColor: AppColors.kSecondKalmaGradientLight,
            iconPath: ('assets/seven.png'),
            title: 'Surah Masad',
            subTitle: '',
            height: SizeConfig.screenHeight! * 0.1,
            width: SizeConfig.screenWidth! * 0.7,
            hasIcon: true,
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: ((context) =>   MultiplesDuaScreen(
              Navigator.push(context, MaterialPageRoute(builder: ((context) =>   SurahDetailScreen(imagePath: 'assets/surah_masad.png'))));
            }),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kPinkGradientDark,
            secondColor: AppColors.kPinkGradientLight,
            iconPath: ('assets/eight.png'),
            title: 'Surah Ikhlas',
            subTitle: '',
            height: SizeConfig.screenHeight! * 0.1,
            width: SizeConfig.screenWidth! * 0.7,
            hasIcon: true,
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: ((context) =>   QaidaSabaqScreen(imageIndex: 2))));
              Navigator.push(context, MaterialPageRoute(builder: ((context) =>   SurahDetailScreen(imagePath: 'assets/surah_ikhlas.png'))));
            }),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kGreenGradientDark,
            secondColor: AppColors.kGreenGradientLight,
            iconPath: ('assets/nine.png'),
            title: 'Surah Falaq',
            subTitle: '',
            height: SizeConfig.screenHeight! * 0.1,
            width: SizeConfig.screenWidth! * 0.7,
            hasIcon: true,
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: ((context) =>   QaidaSabaqScreen(imageIndex: 3))));
              Navigator.push(context, MaterialPageRoute(builder: ((context) =>   SurahDetailScreen(imagePath: 'assets/surah_kalaq.png'))));
            }),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kThirdKalmaGradientDark,
            secondColor: AppColors.kThirdKalmaGradientLight,
            iconPath: ('assets/ten.png'),
            title: 'Surah Nas',
            subTitle: '',
            height: SizeConfig.screenHeight! * 0.1,
            width: SizeConfig.screenWidth! * 0.7,
            hasIcon: true,
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: ((context) =>   QaidaSabaqScreen(imageIndex: 3))));
              Navigator.push(context, MaterialPageRoute(builder: ((context) =>   SurahDetailScreen(imagePath: 'assets/surah_nas.png'))));
            }),
      ],
    );
  }
}
