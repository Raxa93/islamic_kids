
import 'package:flutter/material.dart';

class EmanyatContent extends StatelessWidget {
  final String emanyatName ;
 final String emanyatDua ;
  final String emanyatUrdu ;
  final String emanyatEnglish ;
   const EmanyatContent({Key? key,required this.emanyatName,required this.emanyatDua,required this.emanyatEnglish,required this.emanyatUrdu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 70),
          Text(emanyatName,style: const TextStyle(
            fontSize: 20,
            color: Colors.brown,
            fontFamily: 'Gomgom'
          ),),
          const SizedBox(height: 60),
          Text(
              textAlign: TextAlign.center,
              emanyatDua,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
            fontSize: 20
          )),
          const SizedBox(height: 20),
          Text(emanyatUrdu,
            textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.grey,
                  fontSize: 18
              )
          ),
          const SizedBox(height: 20),
          Text(emanyatEnglish,textAlign: TextAlign.center,
          style: const TextStyle(
              letterSpacing: 0.4,
              fontSize: 18,fontFamily: 'Gomgom'),),

        ],

      ),
    );
  }
}
