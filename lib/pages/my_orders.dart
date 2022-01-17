import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



//////////////////////COMPONENTS///////////////////

import 'package:testproject/component/global/gradient_app_bar.dart';
import 'package:testproject/component/global/payment_success.dart';
import 'package:testproject/component/global/open_order.dart';



class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0xFFF9F9F9)),
      home: const MyOrdersState(),
    );
  }
}

class MyOrdersState extends StatefulWidget {
  const MyOrdersState({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MyOrdersState();

}

class _MyOrdersState extends State<MyOrdersState>  with SingleTickerProviderStateMixin{


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
      appBar: AppBar(
        title:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              // height: 150,
              child: Text(
                "Мои заказы",
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
                children: const[
                  PaymentSuccess(),
                  Padding(padding: EdgeInsets.only(top: 20.0),),
                  OpenOrder(),
                ],
              ),
            ],
          ),
        ),
      ),


    );


  }
}

