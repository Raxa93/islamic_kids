import 'package:flutter/material.dart';

import '../../configurations/size_config.dart';

class SurahDetailScreen extends StatelessWidget {
  String imagePath;
   SurahDetailScreen({Key? key,required this.imagePath}) : super(key: key);

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
              body: Center(
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Image.asset(imagePath),
                  )
                ),
              )),
        ));
  }
}
