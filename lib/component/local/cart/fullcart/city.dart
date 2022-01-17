import 'package:flutter/material.dart';
import 'package:testproject/custom_icons.dart';

class City extends StatelessWidget {
  const City({Key? key}) : super(key: key);


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
    return   Column(
      children: [
        Container(
            width: MediaQuery.of(context).size.width * 0.93,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  padding: const EdgeInsets.all(0.0),
                  primary: Colors.transparent,
                ),
                onPressed: () {

                },
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          CustomIcon.location,
                          color: blackColor,
                        ),
                        Padding(
                            padding:
                            EdgeInsets.only(left: 8.0)),
                        Text(
                          "Москва",
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
                ))

        ),

        Container(
          width: MediaQuery.of(context).size.width * 0.93,
          padding: const EdgeInsets.all(20.0),
          height: 1,
          color: Color(0xFFE0E0E0),
        )
      ],
  );
  }
}
