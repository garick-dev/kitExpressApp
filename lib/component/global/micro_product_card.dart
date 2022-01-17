import 'package:flutter/material.dart';
import 'package:testproject/custom_icons.dart';

class MicroProductCard extends StatelessWidget {
  const MicroProductCard({Key? key}) : super(key: key);


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
      width: 100,
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            Stack(
              children: [
                SizedBox(width: 70, height: 70, child: FittedBox(
                  fit: BoxFit.cover,
                  child:  Image.asset(
                    "assets/image.png",
                  ),
                ),),
                Positioned(
                    bottom: 8.0,
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
                    top: 5.0,
                    right: 5.0,
                    child: IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        iconSize: 13,
                        onPressed: () {},
                        icon: const Icon(
                          CustomIcon.favorite,
                          color: Colors.white,
                          size: 13,
                        ))),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 5.0)),
            Row(
              children: const [
                SizedBox(
                    width: 70,
                    height: 55,
                    child: Text(
                      "Фанера ламинированная",
                      style: TextStyle(
                        color: blackColor,
                        fontFamily: montserrat600,
                        fontSize: 14,
                        letterSpacing:
                        customLetterSpacing,
                        overflow: TextOverflow.fade,
                      ),
                    ))
              ],
            ),
          ],),
          Column(children: [
            const Padding(padding: EdgeInsets.only(top: 5.0)),
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

              ],
            ),
          ],),

        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(3)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
