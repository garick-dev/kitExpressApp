import 'package:flutter/material.dart';
import 'package:testproject/component/global/mini_preview_product_card.dart';
import 'package:testproject/custom_icons.dart';


//////////////////////////PAGES///////////////////
import 'package:testproject/pages/search_city.dart';

class Recommended extends StatelessWidget {
  const Recommended({Key? key}) : super(key: key);


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
        children: [
          const Padding(padding: EdgeInsets.only(top: 20.0)),
          Column(
            children: [
              const Text(
                "Рекомендуем",
                style: TextStyle(
                    fontFamily: montserrat500,
                    letterSpacing: customLetterSpacing,
                    fontSize: 18,
                    color: blackColor),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 4,
                decoration: const BoxDecoration(
                    color: orangeColor,
                    borderRadius:
                    BorderRadius.all(Radius.circular(3))),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: const[
                    MiniPreviewProductCard(),
                    Padding(padding: EdgeInsets.only(left: 20.0)),
                    MiniPreviewProductCard(),
                    Padding(padding: EdgeInsets.only(left: 20.0)),
                    MiniPreviewProductCard(),
                  ],
                )),
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
