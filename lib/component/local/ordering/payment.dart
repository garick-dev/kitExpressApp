import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:testproject/custom_icons.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);


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
      padding: const EdgeInsets.only(top: 20.0, right: 30.0, bottom: 20.0, left: 20.0),
      child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const[
            Text("Способ оплаты",
            style: TextStyle(fontFamily: openSans700, fontSize: 20, letterSpacing: customLetterSpacing, color: blackColor),),
            Icon(CustomIcon.arrow_top, size: 14, color: greyColor,),

          ],),
          const Padding(padding: EdgeInsets.only(top: 20.0),),
          Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(children: [
                  Image.asset("assets/apple-pay.png"),
                  const Padding(padding: EdgeInsets.only(left: 5.0),),
                  const Text("Apple Pay",
                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing),),
                ],),
                Image.asset("assets/checkbox-active.png"),

              ],),
              const Padding(padding: EdgeInsets.only(top: 5.0),),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 1,
                color: greyColor,
              )
          ],),
          const Padding(padding: EdgeInsets.only(top: 10.0),),
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Image.asset("assets/visa.png"),
                  const Padding(padding: EdgeInsets.only(left: 5.0),),
                  const Text("VISA 3386",
                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: greyColor)),
                ],),

              ],),
            const Padding(padding: EdgeInsets.only(top: 5.0),),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 1,
              color: greyColor,
            )
          ],),
          const Padding(padding: EdgeInsets.only(top: 10.0),),
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Image.asset("assets/cash.png"),
                  const Padding(padding: EdgeInsets.only(left: 5.0),),
                  const Text("Наличными",
                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: greyColor)),
                ],),

              ],),
            const Padding(padding: EdgeInsets.only(top: 5.0),),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 1,
              color: greyColor,
            )
          ],),
          const Padding(padding: EdgeInsets.only(top: 10.0),),
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Image.asset("assets/visa.png"),
                  const Padding(padding: EdgeInsets.only(left: 5.0),),
                  const Text("Картой курьеру",
                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: greyColor)),
                ],),

              ],),
            const Padding(padding: EdgeInsets.only(top: 5.0),),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 1,
              color: greyColor,
            )
          ],),
          const Padding(padding: EdgeInsets.only(top: 20.0),),
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Image.asset("assets/add-cart.png"),
                  const Padding(padding: EdgeInsets.only(left: 5.0),),
                  const Text("Добавить карту",
                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: greyColor)),
                ],),

              ],),
          ],),

      ],),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(3)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ]
      ),


    );
  }
}
