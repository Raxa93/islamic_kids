import 'package:flutter/material.dart';

import '../../constants/app_strings.dart';

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
                SizedBox(
                  // color: Colors.red.withOpacity(0.4),
                  height: 350,
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: 70),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 25,
                                ),
                                Text('Step ${i + 1}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        fontFamily: 'Gomgom',
                                        color: Color.fromRGBO(
                                            94, 25, 4, 1))),
                                const SizedBox(
                                  height: 75,
                                ),
                                Text(
                                  AppStrings.namazData[i]['heading']!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Gomgom',
                                      fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  AppStrings.namazData[i]['dua']!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize:  17 ),
                                ),
                                Text(AppStrings.namazData[i]['subheading']!,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: i == 1
                                            ? 17
                                            : 17)),
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
                          height: 45),
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
                          height: 45),
                    )
                        : const SizedBox(),
                  ],
                ),
                const SizedBox(height: 100),
                Image.asset(
                  AppStrings.namazData[currentIndex]['image']!,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
