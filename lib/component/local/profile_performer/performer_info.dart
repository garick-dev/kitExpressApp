import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PerformerInfo extends StatefulWidget {
  const PerformerInfo({Key? key}) : super(key: key);

  @override
  State<PerformerInfo> createState() => _PerformerInfoState();
}

class _PerformerInfoState extends State<PerformerInfo> {

  /////////////////////////GLOBAL//////////////////////

  //fonts
  static const montserrat400 = "Montserrat400";
  static const montserrat500 = "Montserrat500";
  static const montserrat600 = "Montserrat600";
  static const openSans400 = "OpenSans400";
  static const openSans600 = "OpenSans600";
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
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        /////////////////////////АВАТАР, ИМЯ, СПЕЦИАЛЬНОСТЬ/////////////////////
          Row(children: [
              /////////////////////////АВАТАР/////////////////////
              SizedBox(
                width: 75, 
                height: 75, 
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(35)),
                  child: FittedBox(fit: BoxFit.cover, child: Image.asset("assets/elephant.png"),),
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 10.0),),
              /////////////////////////ИМЯ И СПЕЦИАЛЬНОСТЬ/////////////////////
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                Text("ООО Слоники",
                style: TextStyle(fontFamily: montserrat400, fontSize: 18, letterSpacing: customLetterSpacing, color: blackColor),),
                Padding(padding: EdgeInsets.only(top: 10.0),),
                Text("Компания-застройщик",
                style: TextStyle(fontFamily: montserrat400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor)),
              ],)
            ],),
          /////////////////////////ИНФОРМАЦИЯ/////////////////////
          const Padding(padding: EdgeInsets.only(top: 15.0)),
          SizedBox(
            width: 245,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            /////////////////////////ТЕЛЕФОН/////////////////////
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Телефон:",
                  style: TextStyle(fontFamily: montserrat400, fontSize: 12, letterSpacing: customLetterSpacing, color: greyColor),),
                Padding(padding: EdgeInsets.only(top: 5.0),),
                Text("+7 (999) 999-99-99",
                    style: TextStyle(fontFamily: montserrat400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor)),
              ],),
            /////////////////////////САМОВЫВОЗ/////////////////////
            const Padding(padding: EdgeInsets.only(top: 15.0)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Самовывоз:",
                  style: TextStyle(fontFamily: montserrat400, fontSize: 12, letterSpacing: customLetterSpacing, color: greyColor),),
                Padding(padding: EdgeInsets.only(top: 5.0),),
                Text("г.Москва, Кутузовский проспект 15к11, квартира 239",
                    style: TextStyle(fontFamily: montserrat400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor)),
              ],),
            /////////////////////////ОПИСАНИЕ//////////////////////
            const Padding(padding: EdgeInsets.only(top: 15.0)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Описание:",
                  style: TextStyle(fontFamily: montserrat400, fontSize: 12, letterSpacing: customLetterSpacing, color: greyColor),),
                Padding(padding: EdgeInsets.only(top: 5.0),),
                Text("Мы - компания ООО Слоники!",
                    style: TextStyle(fontFamily: montserrat400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor)),
                Padding(padding: EdgeInsets.only(top: 5.0),),
                Text("Наш сайт - www.слоник.ру",
                    style: TextStyle(fontFamily: montserrat400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor)),
                Padding(padding: EdgeInsets.only(top: 5.0),),
                Text("Не будем много о себе говорить, вы и так все прекрасно нас знаете - мы держимся за счет восторженных отзывов наших клиентов",
                    style: TextStyle(fontFamily: montserrat400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor)),
              ],),
          ],),),


          
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
