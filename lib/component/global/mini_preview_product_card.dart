import 'package:flutter/material.dart';
import 'package:testproject/custom_icons.dart';

class MiniPreviewProductCard extends StatelessWidget {
  const MiniPreviewProductCard({Key? key}) : super(key: key);


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
    return Container(
      width: 125,
      height: 235,
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/image.png",
                width: 100,
                height: 85,
              ),
              Positioned(
                  bottom: 5.0,
                  left: 5.0,
                  child: Container(
                    width: 37,
                    height: 15,
                    child: const Center(
                      child: Text(
                        "-35%",
                        style: TextStyle(
                          color: blackColor,
                          fontFamily:
                          montserrat500,
                          fontSize: 12,
                          letterSpacing:
                          customLetterSpacing,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(
                            3),
                        gradient:
                        const LinearGradient(
                            begin: Alignment
                                .topLeft,
                            end: Alignment
                                .bottomRight,
                            colors: <Color>[
                              orangeColor,
                              Color(0xFFFBC41E),
                            ])),
                  )),
              Positioned(
                  top: -10.0,
                  right: -5.0,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CustomIcon.favorite,
                        color: Colors.white,
                        size: 16,
                      ))),
            ],
          ),
          const Padding(
              padding: EdgeInsets.only(top: 5.0)),
          Row(
            children: const [
              Text(
                "790р",
                style: TextStyle(
                  color: blackColor,
                  fontFamily: montserrat600,
                  fontSize: 14,
                  letterSpacing:
                  customLetterSpacing,
                ),
              ),
              Padding(
                  padding:
                  EdgeInsets.only(left: 6.0)),
              Text(
                "1000р",
                style: TextStyle(
                  color: greyColor,
                  fontFamily: montserrat600,
                  fontSize: 14,
                  letterSpacing:
                  customLetterSpacing,
                  decoration:
                  TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
          const Padding(
              padding: EdgeInsets.only(top: 5.0)),
          Row(
            children: const [
              SizedBox(
                  width: 85,
                  height: 35,
                  child: Text(
                    "Фанера ламинированная",
                    style: TextStyle(
                      color: blackColor,
                      fontFamily: montserrat600,
                      fontSize: 14,
                      letterSpacing:
                      customLetterSpacing,
                    ),
                  ))
            ],
          ),
          Row(
            children: const [
              Expanded(
                  child: Text(
                    "Стройматериалы",
                    style: TextStyle(
                      color: greyColor,
                      fontFamily: montserrat500,
                      fontSize: 12,
                      letterSpacing:
                      customLetterSpacing,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
            ],
          ),
          const Padding(
              padding: EdgeInsets.only(top: 5.0)),
          Row(
            children: [
              Image.asset("assets/stars.png",
                  width: 50, height: 10)
            ],
          ),
          const Padding(
              padding:
              EdgeInsets.only(top: 10.0)),
          Row(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 25,
                child: ElevatedButton(
                    style:
                    ElevatedButton.styleFrom(
                      primary: orangeColor,
                    ),
                    onPressed: () {},
                    child: const Text("В корзину",
                        style: TextStyle(
                            fontFamily:
                            openSans700,
                            fontSize: 14,
                            letterSpacing:
                            customLetterSpacing))),
              ),
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.all(Radius.circular(3)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0,
                3), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
