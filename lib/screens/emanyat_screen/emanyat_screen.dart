import 'package:flutter/material.dart';
import 'package:islamic_kids/screens/emanyat_screen/emanyat_content.dart';

import '../../configurations/size_config.dart';
import '../../constants/app_strings.dart';
import '../nimaz_screens/namaz_detail_screen.dart';

class EmanyatScreen extends StatefulWidget {
  const EmanyatScreen({Key? key}) : super(key: key);

  @override
  State<EmanyatScreen> createState() => _EmanyatScreenState();
}

class _EmanyatScreenState extends State<EmanyatScreen> {
  int currentIndex = 0;
  PageController? _controller;
  int currentPage = 0;

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
          body: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: SizeConfig.screenHeight! * 0.7,
                width: SizeConfig.screenWidth,
                // color: Colors.red.withOpacity(0.4),
                child: PageView.builder(
                    controller: _controller,
                    onPageChanged: (int index) {
                      setState(() {
                        currentIndex = index;
                        currentPage = index;
                      });
                    },
                    itemCount: AppStrings.emanyatData.length,
                    itemBuilder: (_, i) => EmanyatContent(
                          emanyatName: AppStrings.emanyatData[i]['Name']!,
                          emanyatDua: AppStrings.emanyatData[i]['Dua']!,
                          emanyatUrdu: AppStrings.emanyatData[i]['Urdu']!,
                          emanyatEnglish: AppStrings.emanyatData[i]['English']!,
                        )),
              ),
              currentIndex == 0
                  ? Container(
                color: Colors.white.withOpacity(0.5),
                height: SizeConfig.screenHeight! * 0.08,
                    width: SizeConfig.screenWidth,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: Text('Home')),
                          SizedBox(width: SizeConfig.screenWidth! * 0.2),
                          InkWell(
                            onTap: () {
                              if (currentIndex != AppStrings.emanyatData.length - 1) {
                                _controller?.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.linear,
                                );
                              }
                            },
                            child: Image.asset(
                              'assets/arrow_forward.png',
                              height: SizeConfig.screenHeight! * 0.07,
                            ),
                          )
                        ],
                      ),
                  )
                  : Container(
                color: Colors.white.withOpacity(0.5),
                height: SizeConfig.screenHeight! * 0.08,
                width: SizeConfig.screenWidth,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              if (currentIndex != 0) {
                                _controller?.previousPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.linear,
                                );
                              }
                            },
                            child: Image.asset("assets/arrow_back.png",
                                height: SizeConfig.screenHeight! * 0.07),
                          ),
                          SizedBox(width: SizeConfig.screenWidth! * 0.24),
                         ElevatedButton(onPressed: (){
                           Navigator.pop(context);
                         }, child: Text('Home'))
                        ],
                      ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
