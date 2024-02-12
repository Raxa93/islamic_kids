import 'package:flutter/material.dart';
import 'package:islamic_kids/constants/app_styles.dart';



class NamazContent extends StatelessWidget {
  const NamazContent(
      {Key? key,
        required this.dua,
        required this.title,
        required this.subTitle,
        required this.index})
      : super(key: key);
  final String dua;
  final String title;
  final String subTitle;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height:  10,
          ),
          Text('Step ${index+1}',
              style: AppStyles.stepTitle),
          const SizedBox(
            height: 10,
          ),

          Text(title,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black,
                fontFamily: 'Gomgom',
                fontSize: 20),

          ),
          const SizedBox(
            height: 10,
          ),
          Text(dua,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black,
                fontSize: 18),

          ),
          Text(subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,
                  fontSize: index == 1 ? 18: 17)),
        ],
      ),
    );
  }
}
