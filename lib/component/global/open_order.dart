import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:testproject/custom_icons.dart';

import 'package:testproject/component/global/micro_product_card.dart';

class OpenOrder extends StatelessWidget {
  const OpenOrder({Key? key}) : super(key: key);

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
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const[
                    Text("Заказ №334",
                      style: TextStyle(fontSize: 20, fontFamily: openSans700, color: blackColor, letterSpacing: customLetterSpacing),),
                    Icon(CustomIcon.arrow_top, size: 12,),
                  ]
              ),
              const Text("Оплачено", style: TextStyle(fontFamily: montserrat500, fontSize: 14, letterSpacing: customLetterSpacing, color: Colors.green),),
              const Padding(padding: EdgeInsets.only(top: 15.0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const[
                  Text("Статус:",
                    style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: greyColor),),
                  Padding(padding: EdgeInsets.only(top: 5.0),),
                  Text("Ожидается доставка",
                      style: TextStyle(fontFamily: montserrat500, fontSize: 16, letterSpacing: customLetterSpacing, color: Colors.red)),
                ],),
              const Padding(padding: EdgeInsets.only(top: 15.0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const[
                  Text("Доставка:",
                    style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: greyColor),),
                  Padding(padding: EdgeInsets.only(top: 5.0),),
                  Text("9 октября с 10:00 - 14:00",
                      style: TextStyle(fontFamily: montserrat500, fontSize: 16, letterSpacing: customLetterSpacing, color: blackColor)),
                ],),
              const Padding(padding: EdgeInsets.only(top: 15.0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const[
                  Text("Адрес:",
                    style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: greyColor),),
                  Padding(padding: EdgeInsets.only(top: 5.0),),
                  Text("г.Москва, Ленинский проспект 94к1, кв.3",
                      style: TextStyle(fontFamily: montserrat500, fontSize: 16, letterSpacing: customLetterSpacing, color: blackColor)),
                ],),
            ],),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
              child:  Row(children: const[
                Padding(padding: EdgeInsets.only(left: 20.0),),
                MicroProductCard(),
                Padding(padding: EdgeInsets.only(left: 20.0),),
                MicroProductCard(),
                Padding(padding: EdgeInsets.only(left: 20.0),),
                MicroProductCard(),
                Padding(padding: EdgeInsets.only(left: 20.0),),
              ],),
            ),

          )
        ],),

      ),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(3)),
          boxShadow: [
            BoxShadow(
                color: greyColor,
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0.0, 0.0)
            )
          ]
      ),
    );
  }
}
