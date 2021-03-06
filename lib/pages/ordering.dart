import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testproject/custom_icons.dart';


//////////////////////COMPONENTS///////////////////
import 'package:testproject/component/global/menu.dart';
import 'package:testproject/component/global/gradient_app_bar.dart';

import 'package:testproject/component/local/ordering/payment.dart';
import 'package:testproject/component/local/ordering/address.dart';
import 'package:testproject/component/local/ordering/data_user.dart';
import 'package:testproject/component/local/ordering/post.dart';
import 'package:testproject/component/local/ordering/promocode.dart';
import 'package:testproject/component/local/ordering/order_detail.dart';
import 'package:testproject/component/local/ordering/politic.dart';



class Ordering extends StatelessWidget {
  const Ordering({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0xFFF9F9F9)),
      home: const OrderingState(),
    );
  }
}

class OrderingState extends StatefulWidget {
  const OrderingState({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _OrderingState();

}

class _OrderingState extends State<OrderingState>  with SingleTickerProviderStateMixin{


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
                "???????????????????? ????????????",
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
                  ////////////////////////?????????? ????????????????////////////////////////
                  Padding(padding: EdgeInsets.only(top: 5.0)),
                  Address(),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  ////////////////////////???????????? ????????????????????////////////////////////
                  DataUser(),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  ////////////////////////????????????????-??????????????????////////////////////////
                  Post(),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  ////////////////////////????????????////////////////////////
                  Payment(),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  ///////////////////////????????????????////////////////////////
                  Promocode(),
                  ///////////////////////???????????? ????????????////////////////////////
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  OrderDetail(),
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

