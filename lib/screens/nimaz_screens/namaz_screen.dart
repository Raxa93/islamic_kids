import 'package:flutter/material.dart';

import '../../configurations/size_config.dart';
import '../../constants/app_strings.dart';
import '../../constants/app_styles.dart';
import 'namaz_detail_screen.dart';
import 'nimaz_content.dart';

class NamazScreen extends StatefulWidget {
  const NamazScreen({Key? key}) : super(key: key);

  @override
  State<NamazScreen> createState() => _NamazScreenState();
}

class _NamazScreenState extends State<NamazScreen> {
  int currentPage = 0;
  int currentIndex = 0;
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
            image: AssetImage("assets/nimaz_main_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          // extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
          ),
          body: SizedBox.expand(
            child: Column(
               // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  // color: Colors.red.withOpacity(0.4),
                  height: SizeConfig.screenHeight! * 0.47,
                  child: PageView.builder(
                      controller: _controller,
                      onPageChanged: (int index) {
                        setState(() {
                          currentIndex = index;
                          currentPage = index;
                        });
                      },
                      itemCount: AppStrings.namazData.length,
                      itemBuilder: (_, i) => Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.screenWidth! * 0.18),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: SizeConfig.screenHeight! * 0.01,
                                ),
                                Text('Step ${i + 1}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            SizeConfig.screenHeight! * 0.03,
                                        fontFamily: 'Gomgom',
                                        color: const Color.fromRGBO(
                                            94, 25, 4, 1))),
                                SizedBox(
                                  height: SizeConfig.screenHeight! * 0.1,
                                ),
                                Text(
                                  AppStrings.namazData[i]['heading']!,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Gomgom',
                                      fontSize: SizeConfig.screenHeight! * 0.017),
                                ),
                                SizedBox(
                                  height: SizeConfig.screenHeight! * 0.016,
                                ),
                                Text(
                                  AppStrings.namazData[i]['dua']!,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          SizeConfig.screenHeight! * 0.043),
                                ),
                                Text(AppStrings.namazData[i]['subheading']!,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: i == 1
                                            ? SizeConfig.screenHeight! * 0.0184
                                            : SizeConfig.screenHeight! *
                                                0.025)),
                              ],
                            ),
                          )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    currentIndex !=0 ?  InkWell(
                      onTap: () {
                        if (currentIndex != 0) {
                          _controller?.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.linear,
                          );
                        }
                      },
                      child: Image.asset("assets/arrow_back.png",
                          height: SizeConfig.screenHeight! * 0.06),
                    ) : const SizedBox(),

                    currentIndex != AppStrings.namazData.length - 1
                        ? InkWell(
                      onTap: () {
                        if (currentIndex != AppStrings.namazData.length - 1) {
                          _controller?.nextPage(
                            duration:
                            const Duration(milliseconds: 300),
                            curve: Curves.linear,
                          );
                        }
                      },
                      child: Image.asset("assets/arrow_forward.png",
                          height: SizeConfig.screenHeight! * 0.06),
                    )
                        : const SizedBox(),
                  ],
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.12),
                Image.asset(
                  AppStrings.namazData[currentIndex]['image']!,
                  height: SizeConfig.screenHeight! * 0.13,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
