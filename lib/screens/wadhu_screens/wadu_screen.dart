// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:islamic_kids/screens/wadhu_screens/wadhu_content.dart';

import '../../constants/app_strings.dart';


class WadhuScreen extends StatefulWidget {
  const WadhuScreen({Key? key}) : super(key: key);

  @override
  State<WadhuScreen> createState() => _WadhuScreenState();
}

class _WadhuScreenState extends State<WadhuScreen> {
  int currentPage = 0;
  int currentIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _controller = PageController(initialPage: 0);
    });

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
            image: AssetImage("assets/wadhu_main.png"),
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
          body: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              SizedBox(
                 // color: Colors.red.withOpacity(0.5),
                // height: SizeConfig.screenHeight! * 0.35,
                height: 250,
                width: MediaQuery.of(context).size.width * 0.8,
                child: PageView.builder(
                    controller: _controller,
                    onPageChanged: (int index) {
                      setState(() {
                        currentIndex = index;
                        currentPage = index;
                      });
                    },
                    itemCount: AppStrings.splashData.length,
                    itemBuilder: (_, i) => WadhuContent(
                      index: i,
                      subTitle: AppStrings.splashData[i]
                      ['subheading']!,
                      title: AppStrings.splashData[i]
                      ['heading']!,
                      img: AppStrings.splashData[i]['image']!,
                    )),

              ),
              currentIndex == 0 ?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.4),
                  InkWell(
                    onTap: (){
                      if(currentIndex != AppStrings.splashData.length - 1){
                        _controller?.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.linear,
                        );
                      }
                    },
                    child: Image.asset('assets/arrow_forward.png',
                      height: 45,
                    ),
                  )
                ],
              ) :
              Row(
                mainAxisAlignment: currentIndex == 7 ?  MainAxisAlignment.spaceAround : MainAxisAlignment.spaceEvenly,

                children: [

                  InkWell(
                    onTap: (){
                      if(currentIndex!= 0){
                        _controller?.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.linear,
                        );
                      }
                    },
                    child: Image.asset(
                        "assets/arrow_back.png",
                        height: 45),
                  ),

                  currentIndex != AppStrings.splashData.length - 1 ?  InkWell(
                    onTap: (){
                      if(currentIndex != AppStrings.splashData.length - 1){
                        _controller?.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.linear,
                        );
                      }
                    },
                    child: Image.asset(
                        "assets/arrow_forward.png",
                        height: 47),
                  ) : const SizedBox(),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}
