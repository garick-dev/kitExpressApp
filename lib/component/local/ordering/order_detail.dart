import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class OrderDetail extends StatelessWidget {
  const OrderDetail({Key? key}) : super(key: key);


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
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Ваш заказ:",
                style: TextStyle(fontFamily: openSans700, fontSize: 20, letterSpacing: customLetterSpacing, color: blackColor),),

              Text("3 товара - 3 кг",
                  style: TextStyle(fontFamily: montserrat400, fontSize: 14, letterSpacing: customLetterSpacing, color: greyColor))
            ],),
          const Padding(padding: EdgeInsets.only(top: 15.0),),
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
              Text("Доставка:",
                style: TextStyle(fontFamily: montserrat500, fontSize: 18, letterSpacing: customLetterSpacing, color: blackColor),),

              Text("Бесплатно",
                  style: TextStyle(fontFamily: montserrat500, fontSize: 18, letterSpacing: customLetterSpacing, color: Colors.green))
            ],),
          const Padding(padding: EdgeInsets.only(top: 20.0),),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 4,
            decoration: const BoxDecoration(
              color: Color(0xFFE0E0E0),
              borderRadius: BorderRadius.all(Radius.circular(3)),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 5.0),),
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
        const BorderRadius.all(Radius.circular(3)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0,0), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
