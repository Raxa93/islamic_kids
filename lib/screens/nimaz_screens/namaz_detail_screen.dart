// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class NimazDetailScreen extends StatelessWidget {
  String? detailText ;
  int? index ;
   NimazDetailScreen({Key? key,required this.detailText,required this.index}) : super(key: key);

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
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text('Step ${index! +1} Details',style: const TextStyle( fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Gomgom',
                    color: Color.fromRGBO(94, 25, 4, 1)), ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 400,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    detailText!.trim().toString(),
                    style: const TextStyle(

                    fontSize: 17
                  ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
