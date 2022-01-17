import 'package:flutter/material.dart';
import 'package:testproject/custom_icons.dart';

class HeaderReviews extends StatelessWidget {
  const HeaderReviews({Key? key}) : super(key: key);

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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width:
                MediaQuery.of(context).size.width * 0.8,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      padding: const EdgeInsets.all(0.0),
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Отзывы",
                              style: TextStyle(
                                  fontFamily: montserrat500,
                                  letterSpacing:
                                  customLetterSpacing,
                                  fontSize: 18,
                                  color: blackColor),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(left: 15.0),
                            ),
                            Text(
                              "140",
                              style: TextStyle(
                                  fontFamily: montserrat500,
                                  letterSpacing:
                                  customLetterSpacing,
                                  fontSize: 18,
                                  color: greyColor),
                            ),
                          ],
                        ),
                        const Icon(
                          CustomIcon.arrow_right,
                          color: greyColor,
                        ),
                      ],
                    ))),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 4,
              decoration: const BoxDecoration(
                  color: orangeColor,
                  borderRadius:
                  BorderRadius.all(Radius.circular(3))),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 15.0),
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const Text(
                "Мы не нашли данный товар среди ваших покупок: вы можете оставлять отзывы только к товарам, которые приобретали ранее.",
                style: TextStyle(
                    fontFamily: montserrat400,
                    fontSize: 16,
                    letterSpacing: customLetterSpacing,
                    color: blackColor),
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 15.0),
        ),
        Row(
          children: [
            Image.asset("assets/stars.png"),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
            ),
            const Text("3,5/5",
                style: TextStyle(
                    fontFamily: montserrat500,
                    fontSize: 18,
                    letterSpacing: customLetterSpacing,
                    color: blackColor))
          ],
        ),

      ],),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.all(Radius.circular(3)),
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
