import 'package:flutter/material.dart';
import 'package:testproject/custom_icons.dart';

class ReviewBlock extends StatelessWidget {
  const ReviewBlock({Key? key}) : super(key: key);

  /////////////////////////GLOBAL//////////////////////

  //fonts
  static const montserrat400 = "Montserrat400";
  static const montserrat500 = "Montserrat500";
  static const montserrat600 = "Montserrat600";
  static const openSans400 = "OpenSans400";
  static const openSans700 = "OpenSans700";


  //color
  static const orangeColor = Color(0xFFF49613);
  static const yellowColor = Color(0xFFFBC11D);
  static const blackColor = Color(0xFF0D0903);
  static const greyColor = Color(0xFFBDBDBD);

//letterSpacing
  static const customLetterSpacing = -0.4;

  /////////////GLOBAL////////////////////////

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.symmetric(
          vertical: 20.0, horizontal: 15.0),
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.only(top: 25.0),
        ),
        Row(
          children: [
            Image.asset(
              "assets/stars.png",
              width: 70,
              height: 15,
            ),
            const Padding(
                padding: EdgeInsets.only(left: 5.0)),
            const Text("2 октября 2021",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: montserrat500,
                    letterSpacing: customLetterSpacing,
                    color: greyColor))
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 15.0),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/user-avatar.png"),
            const Padding(
              padding: EdgeInsets.only(left: 5.0),
            ),
            const Text(
              "Орехов М.",
              style: TextStyle(
                  fontFamily: montserrat600,
                  fontSize: 14,
                  letterSpacing: customLetterSpacing,
                  color: blackColor),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 270,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Достоинства:",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: montserrat600,
                        letterSpacing: customLetterSpacing,
                        color: blackColor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                  ),
                  Text(
                    "Отличное качество, быстрая доставка",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: montserrat500,
                        letterSpacing: customLetterSpacing,
                        color: blackColor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  Text(
                    "Недостатки:",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: montserrat600,
                        letterSpacing: customLetterSpacing,
                        color: blackColor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                  ),
                  Text(
                    "Нет",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: montserrat500,
                        letterSpacing: customLetterSpacing,
                        color: blackColor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  Text(
                    "Комментарии:",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: montserrat600,
                        letterSpacing: customLetterSpacing,
                        color: blackColor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                  ),
                  Text(
                    "Все подошло, буду заказывать еще",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: montserrat500,
                        letterSpacing: customLetterSpacing,
                        color: blackColor),
                  ),
                ],
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 15.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 180,
              child: Row(
                children: [
                  Image.asset(
                    "assets/firewood.png",
                    width: 115,
                    height: 110,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                  ),
                  Column(
                    children: [
                      Image.asset("assets/firewood.png",
                          width: 55, height: 50),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Image.asset("assets/firewood.png",
                          width: 55, height: 50),
                    ],
                  )
                ],
              ),
            )
          ],
        ),

      ],),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        const BorderRadius.all(Radius.circular(3)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
