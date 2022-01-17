import 'package:flutter/material.dart';

import 'package:testproject/custom_icons.dart';


//////////////////////COMPONENTS///////////////////
import 'package:testproject/component/global/add_task.dart';
import 'package:testproject/component/global/menu.dart';
import 'package:testproject/component/global/gradient_app_bar.dart';


import 'package:testproject/component/local/transportation/slider.dart';
import 'package:testproject/component/local/transportation/tabs.dart';
import 'package:testproject/component/local/transportation/seller.dart';
import 'package:testproject/component/local/transportation/post_info.dart';
import 'package:testproject/component/local/productCard/reviews.dart';






class ProductCardTransportation extends StatelessWidget {
  const ProductCardTransportation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0xFFF9F9F9)),
      home: const ProductCardTransportationState(),
    );
  }
}

class ProductCardTransportationState extends StatefulWidget {
  const ProductCardTransportationState({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProductCardTransportationState();
}

class _ProductCardTransportationState extends State<ProductCardTransportationState>
    with SingleTickerProviderStateMixin {





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

    return Scaffold(
      appBar: AppBar(
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              // height: 150,
              child: Text(
                "Грузовичкофф",
                softWrap: true,
                style: TextStyle(
                  fontSize: 24,
                  letterSpacing: customLetterSpacing,
                  fontFamily: openSans700,
                  overflow: TextOverflow.fade,
                ),
              ),
            ),
          ],
        ),

        flexibleSpace: const GradientAppBar(),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        padding: const EdgeInsets.only(top: 20.0),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: const[
                  ///////////////////////////////Слайдер/////////////////////////////////
                  SliderImage(),
                  Padding(padding: EdgeInsets.only(top: 20.0),),
                  //////////////////Кнопка отзывов и создать задание/////////////////////
                  AddTask(),
                  Padding(padding: EdgeInsets.only(top: 20.0),),
                  ////////////////Табы описания и характеристик//////////////////////////////
                  Tabs(),
                  Padding(padding: EdgeInsets.only(top: 20.0),),
                  ///////////////////////////////Продавец/////////////////////////////////
                  Seller(),
                  Padding(padding: EdgeInsets.only(top: 20.0),),
                  ///////////////////////////////Информация от доставке-выезде/////////////////////////////////
                  PostInfo(),
                  Padding(padding: EdgeInsets.only(top: 20.0),),
                  ///////////////////////////////Отзывы/////////////////////////////////
                  ReviewsBlock(),
                  Padding(padding: EdgeInsets.only(top: 140.0),)
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: SizedBox(
        height: 60,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: orangeColor,
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Выбрать",
                    style: TextStyle(
                        fontFamily: openSans700,
                        fontSize: 24,
                        letterSpacing: customLetterSpacing,
                        color: Colors.white)),

              ],
            )),
      ),

      bottomNavigationBar: const MainMenu(),
    );
  }
}
