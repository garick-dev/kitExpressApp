import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testproject/custom_icons.dart';



class PreviewPerformersCard extends StatefulWidget {
  const PreviewPerformersCard({Key? key}) : super(key: key);

  @override
  State<PreviewPerformersCard> createState() => _PreviewPerformersCardState();
}

class _PreviewPerformersCardState extends State<PreviewPerformersCard> {

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
      width: 155,
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          /////////////////////////АВАТАР//////////////////////
        SizedBox(
          width: 135,
          height: 135,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(70)),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset("assets/performer.png"),
            ),
        ),
        ),
          /////////////////////////ИНФО//////////////////////
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Padding(padding: EdgeInsets.only(top: 20.0)),
            /////////////////////////ИМЯ//////////////////////
          const Text("Михайленко Вероника",
          style: TextStyle(fontFamily: montserrat600, fontSize: 14, letterSpacing: customLetterSpacing),),
          const Padding(padding: EdgeInsets.only(top: 15.0)),
            /////////////////////////СПЕЦИАЛЬНОСТЬ//////////////////////
          const Text("Дизайнер интерьеров",
          style: TextStyle(fontFamily: montserrat500, fontSize: 12, letterSpacing: customLetterSpacing, color: greyColor)),
          const Padding(padding: EdgeInsets.only(top: 5.0)),
            /////////////////////////РЕЙТИНГ//////////////////////
          Image.asset("assets/stars.png", width: 50, height: 10,),
          const Padding(padding: EdgeInsets.only(top: 10.0)),
            /////////////////////////КНОПКА//////////////////////
          SizedBox(
            width: 145,
            height: 25,
            child:   ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: yellowColor,
                ),
                onPressed: (){},
                child: const Text("В чат",
                style: TextStyle(fontFamily: openSans700, fontSize: 14, letterSpacing: customLetterSpacing))),)

        ],),



      ],),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(3)),
        boxShadow: [
          BoxShadow(
            color: greyColor,
            spreadRadius: 1,
            blurRadius: 1,
          )],
      ),
    );
  }
}
