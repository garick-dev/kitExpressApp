import 'package:flutter/material.dart';
import 'package:testproject/custom_icons.dart';


class SimilarProduct extends StatelessWidget {
  const SimilarProduct({Key? key}) : super(key: key);


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
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text(
                    "С этим товаром искали:",
                    style: TextStyle(
                        fontFamily: montserrat500,
                        letterSpacing: customLetterSpacing,
                        fontSize: 18,
                        color: blackColor),
                  ),
                  Container(
                    width:
                    MediaQuery.of(context).size.width * 0.6,
                    height: 4,
                    decoration: const BoxDecoration(
                        color: orangeColor,
                        borderRadius:
                        BorderRadius.all(Radius.circular(3))),
                  )
                ],
              )
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          Column(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
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
                                "Герметики акриловые",
                                style: TextStyle(
                                    fontFamily: montserrat500,
                                    letterSpacing:
                                    customLetterSpacing,
                                    fontSize: 18,
                                    color: blackColor),
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
                padding: const EdgeInsets.all(20.0),
                height: 1,
                color: Color(0xFFE0E0E0),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
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
                                "Демисезонная",
                                style: TextStyle(
                                    fontFamily: montserrat500,
                                    letterSpacing:
                                    customLetterSpacing,
                                    fontSize: 18,
                                    color: blackColor),
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
                padding: const EdgeInsets.all(20.0),
                height: 1,
                color: Color(0xFFE0E0E0),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
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
                                "Фанера",
                                style: TextStyle(
                                    fontFamily: montserrat500,
                                    letterSpacing:
                                    customLetterSpacing,
                                    fontSize: 18,
                                    color: blackColor),
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
                padding: const EdgeInsets.all(20.0),
                height: 1,
                color: Color(0xFFE0E0E0),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
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
                                "Столы",
                                style: TextStyle(
                                    fontFamily: montserrat500,
                                    letterSpacing:
                                    customLetterSpacing,
                                    fontSize: 18,
                                    color: blackColor),
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
                padding: const EdgeInsets.all(20.0),
                height: 1,
                color: Color(0xFFE0E0E0),
              )
            ],
          ),
        ],
      ),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(3)),
          boxShadow: [
            BoxShadow(
                color: greyColor,
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0.0, 0.0)
            )
          ]
      ),
    );
  }
}
