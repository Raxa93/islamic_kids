import 'package:flutter/material.dart';
import 'package:islamic_kids/screens/surah/surah_detail.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
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
                      },
                    )),
              ),
              const SizedBox(height: 60),
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
                        height: 50,
                        width: 80,
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
                        height: 50,
                        width: 80,
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
        const SizedBox(height: 10),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kFirstKalmaGradientDark,
            secondColor: AppColors.kFirstKalmaGradientLight,
            iconPath: ('assets/one.png'),
            title: 'Surah Fil',
            subTitle: 'سورة الفيل',
            height: 75,
            width:280,
            hasIcon: true,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>   const SurahDetailScreen(imagePath: 'assets/surah_fil.png'))));
            }),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kSecondKalmaGradientDark,
            secondColor: AppColors.kSecondKalmaGradientLight,
            iconPath: ('assets/two.png'),
            title: 'Surah Quraysh',
            subTitle: 'سورة قريش',
            height: 75,
            width:280,
            hasIcon: true,
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>   MultiplesDuaScreen(

               Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SurahDetailScreen(imagePath: 'assets/surah_quresh.png')));
            }),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kPinkGradientDark,
            secondColor: AppColors.kPinkGradientLight,
            iconPath: ('assets/three.png'),
            title: 'Surah Maun',
            subTitle: 'سورة الماعون',
            height: 75,
            width:280,
            hasIcon: true,
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>   QaidaSabaqScreen(imageIndex: 2))));

              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SurahDetailScreen(imagePath: 'assets/surah_maun.png')));
            }),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kGreenGradientDark,
            secondColor: AppColors.kGreenGradientLight,
            iconPath: ('assets/four.png'),
            title: 'Surah Kawthar',
            subTitle: 'سورة الكوثر',
            height: 75,
            width:280,
            hasIcon: true,
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>   QaidaSabaqScreen(imageIndex: 3))));


              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SurahDetailScreen(imagePath: 'assets/surah_kausar.png')));
            }),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kThirdKalmaGradientDark,
            secondColor: AppColors.kThirdKalmaGradientLight,
            iconPath: ('assets/five.png'),
            title: 'Surah Kafirun',
            subTitle: 'سورة الكافرون',
            height: 75,
            width:280,
            hasIcon: true,
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>   QaidaSabaqScreen(imageIndex: 3))));

              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SurahDetailScreen(imagePath: 'assets/surah_kafarun.png')));
            }),
      ],
    );
  }

  secondScreenWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kFirstKalmaGradientDark,
            secondColor: AppColors.kFirstKalmaGradientLight,
            iconPath: ('assets/six.png'),
            title: 'Surah Nasar',
            subTitle: 'سورة النصر',
            height: 75,
            width:280,
            hasIcon: true,
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>   QaidaSabaqScreen(imageIndex: 0))));

              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SurahDetailScreen(imagePath: 'assets/surah_nasar.png')));
            }),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kSecondKalmaGradientDark,
            secondColor: AppColors.kSecondKalmaGradientLight,
            iconPath: ('assets/seven.png'),
            title: 'Surah Masad',
            subTitle: 'سورة المسد',
            height: 75,
            width:280,
            hasIcon: true,
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>   MultiplesDuaScreen(

              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SurahDetailScreen(imagePath: 'assets/surah_masad.png')));
            }),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kPinkGradientDark,
            secondColor: AppColors.kPinkGradientLight,
            iconPath: ('assets/eight.png'),
            title: 'Surah Ikhlas',
            subTitle: 'سورة الإخلاص',
            height: 75,
            width:280,
            hasIcon: true,
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>   QaidaSabaqScreen(imageIndex: 2))));

              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SurahDetailScreen(imagePath: 'assets/surah_ikhlas.png')));
            }),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kGreenGradientDark,
            secondColor: AppColors.kGreenGradientLight,
            iconPath: ('assets/nine.png'),
            title: 'Surah Falaq',
            subTitle: 'سورة الفلق',
            height: 75,
            width:280,
            hasIcon: true,
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>   QaidaSabaqScreen(imageIndex: 3))));
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SurahDetailScreen(imagePath: 'assets/surah_kalaq.png')));
            }),
        CustomWidgets.kalmasCard(
            firstColor: AppColors.kThirdKalmaGradientDark,
            secondColor: AppColors.kThirdKalmaGradientLight,
            iconPath: ('assets/ten.png'),
            title: 'Surah Nas',
            subTitle: 'سورة الناس',
            height: 75,
            width:280,
            hasIcon: true,
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>   QaidaSabaqScreen(imageIndex: 3))));
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SurahDetailScreen(imagePath: 'assets/surah_nas.png')));
            }),
      ],
    );
  }
}
