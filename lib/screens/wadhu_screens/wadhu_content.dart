import 'package:flutter/material.dart';
import 'package:islamic_kids/constants/app_styles.dart';



class WadhuContent extends StatelessWidget {
  const WadhuContent(
      {Key? key,
      required this.img,
      required this.title,
      required this.subTitle,
      required this.index})
      : super(key: key);
  final String img;
  final String title;
  final String subTitle;
  final int index;

  @override
  Widget build(BuildContext context) {
    // print('Index $title');
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // SizedBox(
        //   height:  SizeConfig.screenHeight! * 0.02,
        // ),
        Text('Step $index', style: AppStyles.stepTitle),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.only(left: index == 6 ? 5 : 0 ) ,
          child: Image.asset(
            img,
            fit: BoxFit.cover,
            height:index == 6 ?  70 : 80
            // index == 6 ? SizeConfig.screenHeight! * 0.095 : SizeConfig.screenHeight! * 0.14,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(title,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black,
                fontFamily: 'Gomgom',
                wordSpacing: 1,
                fontSize: 18),

        ),
        const SizedBox(
          height: 15,
        ),
        Text(subTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black,

                fontSize: 17)),
      ],
    );
  }
}
