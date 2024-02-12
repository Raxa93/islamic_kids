import 'package:flutter/material.dart';
import 'package:islamic_kids/constants/app_strings.dart';


class QaidaSabaqScreen extends StatelessWidget {
 final int imageIndex;

   const QaidaSabaqScreen({Key? key,required this.imageIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/basics_dua_home.png"),
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
            child:   Padding(
              padding:  const EdgeInsets.all(8),
              child: Image.asset(AppStrings.qaidaPath[imageIndex]['Qaida_Path'].toString(),fit: BoxFit.cover,),
            ),
          ),
        ),
      ),
    );
  }
}
