import 'package:flutter/material.dart';
import 'package:islamic_kids/screens/emanyat_screen/emanyat_content.dart';

import '../../constants/app_strings.dart';

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
              SizedBox(
                height: 540,
                width: MediaQuery.of(context).size.width,
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
                height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ElevatedButton(onPressed: (){
                          //   Navigator.pop(context);
                          // }, child: const Text('Home')),
                          const SizedBox(width: 10),
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
                              height: 45,
                            ),
                          )
                        ],
                      ),
                  )
                  : Container(
                color: Colors.white.withOpacity(0.5),
                height: 70,
                width: MediaQuery.of(context).size.width,
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
                                height: 45),
                          ),
                          const SizedBox(width: 10),
                         // ElevatedButton(onPressed: (){
                         //   Navigator.pop(context);
                         // }, child: const Text('Home'))
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
