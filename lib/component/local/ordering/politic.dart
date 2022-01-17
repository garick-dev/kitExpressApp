import 'package:flutter/material.dart';


class Politic extends StatelessWidget {
  const Politic({Key? key}) : super(key: key);


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
      child: Column(
        children: const [
            Text("Нажимая на кнопку, вы соглашаетесь с Условиями обработки персональных данных,а также с Условиями продажи",
            style: TextStyle(fontFamily: montserrat400, fontSize: 14, letterSpacing: customLetterSpacing, color: greyColor),)
        ],
      ),

    );
  }
}
