import 'package:flutter/material.dart';
import 'package:testproject/custom_icons.dart';

class CartDetail extends StatelessWidget {
  const CartDetail({Key? key}) : super(key: key);


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
      width: MediaQuery.of(context).size.width * 1.0,
      padding: const EdgeInsets.all(15.0),

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Общая стоимость:",
                style: TextStyle(fontFamily: montserrat500, fontSize: 18, letterSpacing: customLetterSpacing, color: blackColor),),

              Text("4 000 Р",
                  style: TextStyle(fontFamily: montserrat500, fontSize: 18, letterSpacing: customLetterSpacing, color: blackColor))
            ],),
          const Padding(padding: EdgeInsets.only(top: 15.0),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Скидка:",
                style: TextStyle(fontFamily: montserrat500, fontSize: 18, letterSpacing: customLetterSpacing, color: blackColor),),

              Text("-2 010 Р",
                  style: TextStyle(fontFamily: montserrat500, fontSize: 18, letterSpacing: customLetterSpacing, color: Colors.red))
            ],),
          const Padding(padding: EdgeInsets.only(top: 15.0),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Итого:",
                style: TextStyle(fontFamily: montserrat500, fontSize: 18, letterSpacing: customLetterSpacing, color: blackColor),),

              Text("1 990 Р",
                  style: TextStyle(fontFamily: montserrat500, fontSize: 18, letterSpacing: customLetterSpacing, color: blackColor))
            ],),
        ],
      ),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.all(Radius.circular(3)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0,
                0), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
