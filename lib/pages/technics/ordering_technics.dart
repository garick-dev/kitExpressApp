import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testproject/custom_icons.dart';


//////////////////////COMPONENTS///////////////////
import 'package:testproject/component/global/menu.dart';
import 'package:testproject/component/global/gradient_app_bar.dart';

import 'package:testproject/component/local/technics/date.dart';
import 'package:testproject/component/local/technics/count_shift_technics.dart';
import 'package:testproject/component/local/technics/count_auto_technics.dart';
import 'package:testproject/component/local/technics/comment.dart';

import 'package:testproject/component/local/ordering/payment.dart';
import 'package:testproject/component/local/ordering/address.dart';
import 'package:testproject/component/local/ordering/data_user.dart';
import 'package:testproject/component/local/ordering/promocode.dart';
import 'package:testproject/component/local/ordering/order_detail.dart';
import 'package:testproject/component/local/ordering/politic.dart';



class OrderingTechnics extends StatelessWidget {
  const OrderingTechnics({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0xFFF9F9F9)),
      home: const OrderingTechnicsState(),
    );
  }
}

class OrderingTechnicsState extends StatefulWidget {
  const OrderingTechnicsState({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _OrderingTechnicsState();

}

class _OrderingTechnicsState extends State<OrderingTechnicsState>  with SingleTickerProviderStateMixin{


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

    return Scaffold (
      appBar:

      AppBar(
        title:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              // height: 150,
              child: Text(
                "Оформление заказа",
                softWrap: true,
                style: TextStyle(
                  fontSize: 24,
                  letterSpacing: customLetterSpacing,
                  fontFamily: openSans700,
                  overflow: TextOverflow.fade,
                ),
              ),),

          ],),

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
                children: const [
                  Padding(padding: EdgeInsets.only(top: 5.0)),
                  ////////////////////////Адрес доставки////////////////////////
                  Address(),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  ////////////////////////Данные получателя////////////////////////
                  DataUser(),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  ////////////////////////Дата////////////////////////
                  DateTechnics(),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  ////////////////////////Количество смен////////////////////////
                  CountShiftTechnics(),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  ////////////////////////Количество машин////////////////////////
                  CountAutoTechnics(),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  ////////////////////////Оплата////////////////////////
                  Payment(),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  ///////////////////////Промокод////////////////////////
                  Promocode(),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  ///////////////////////Промокод////////////////////////
                  Comment(),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  ///////////////////////Детали заказа////////////////////////
                  OrderDetail(),
              ///////////////////////Политика////////////////////////
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  Politic(),
                  Padding(padding: EdgeInsets.only(top: 130.0),)

                ],
              ),

            ],),
        ),
      ),

      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: SizedBox(
        height: 60,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: blackColor,
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/apple-pay-white.png"),
              ],
            )),
      ),

      bottomNavigationBar: const MainMenu(),


    );


  }
}

