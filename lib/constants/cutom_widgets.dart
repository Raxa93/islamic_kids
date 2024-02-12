import 'package:flutter/material.dart';



class CustomWidgets {
  static Widget customCard(
      {required var firstColor,
        required double height,
        required double width,
      required var secondColor,
      required String iconPath,
      required String cardText,
      required var onCardTap}) {
    return InkWell(
      onTap: onCardTap,
      child: Container(
        height: height,
        width: width,
        // color: Colors.red,

        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [firstColor, secondColor],
            ),
            borderRadius: BorderRadius.circular(13),
            border: Border.all(color: Colors.grey.withOpacity(0.5))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              width: 62,
              height: 60,
              fit: BoxFit.cover,
            ),
            Text(
              cardText,
              style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'Gomgom',
                  fontSize: 18),
            )
          ],
        ),
      ),
    );
  }

  static Widget kalmasCard(
      {required var firstColor,

      required var secondColor,
      required String iconPath,
      required String title,
      required String subTitle,
        required double height,
        required double width,
        required bool hasIcon,
      required var onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
         margin: const EdgeInsets.all(5.0),
        height:height ,
        width: width ,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [firstColor, secondColor],
            ),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
          hasIcon ?  Image.asset(iconPath,width: 50,height: 50)

              : const SizedBox.shrink(),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title,style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'Gomgom'
                ),), Text(subTitle,style: const TextStyle(fontSize: 17),)],
            )
          ],
        ),
      ),
    );
  }

  static Widget QaidaCard(
      {required var firstColor,
        required var secondColor,
        required String iconPath,
        required String title,
        required String subTitle,
        required double height,
        required double width,
        required bool hasIcon,
        required var onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        height: height ,
        width: width ,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [firstColor, secondColor],
            ),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            hasIcon ?  const Icon(
              Icons.add,
              color: Colors.red,
              size: 50,
            ) : const SizedBox.shrink(),
            // SizedBox(width: SizeConfig.screenWidth! * 0.08),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title,style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Gomgom'
                ),), Text(subTitle,style: const TextStyle(fontSize: 18),)],
            )
          ],
        ),
      ),
    );
  }
}
