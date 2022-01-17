import 'package:flutter/material.dart';
import 'package:testproject/custom_icons.dart';


class Seller extends StatelessWidget {
  const Seller({Key? key}) : super(key: key);


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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Компания",
                  style: TextStyle(
                      color: greyColor,
                      fontFamily: montserrat400,
                      letterSpacing: customLetterSpacing,
                      fontSize: 14),
                ),
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
                          children: const[
                            Text(
                              "Грузовичкофф",
                              style: TextStyle(
                                  fontFamily: montserrat500,
                                  letterSpacing:
                                  customLetterSpacing,
                                  fontSize: 18,
                                  color: blackColor),
                            ),
                            Icon(
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
