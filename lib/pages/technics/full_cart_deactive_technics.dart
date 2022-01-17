import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:testproject/custom_icons.dart';


/////////////////////////COMPONENTS//////////////////////
import 'package:testproject/component/global/menu.dart';
import 'package:testproject/component/global/gradient_app_bar.dart';
import 'package:testproject/component/global/single_product_card.dart';

import 'package:testproject/component/local/cart/fullcart/select_all.dart';
import 'package:testproject/component/local/cart/fullcart/city.dart';
import 'package:testproject/component/local/cart/fullcart/cart_detail.dart';



class FullCartDeactiveTechnics extends StatelessWidget {
  const FullCartDeactiveTechnics({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0xFFF9F9F9)),
      home: const FullCartDeactiveTechnicsState(),
    );
  }
}

class FullCartDeactiveTechnicsState extends StatefulWidget {
  const FullCartDeactiveTechnicsState({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _FullCartDeactiveTechnicsState();

}

class _FullCartDeactiveTechnicsState extends State<FullCartDeactiveTechnicsState>  with SingleTickerProviderStateMixin{


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
              child: Text(
                "Корзина (1)",
                softWrap: true,
                style: TextStyle(
                  fontSize: 24,
                  letterSpacing: customLetterSpacing,
                  fontFamily: openSans700,
                  overflow: TextOverflow.fade,
                ),
              ),),

          ],),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.close)),
        ],
        flexibleSpace: const GradientAppBar(),

      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        child: SingleChildScrollView(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: const [
                  SelectAllProduct(),
                  City(),
                  Padding(padding: EdgeInsets.only(top: 25.0)),
                  SingleProductCard(),
                  Padding(padding: EdgeInsets.only(top: 25.0),),
                  CartDetail(),
                  Padding(padding: EdgeInsets.only(top: 150.0),),
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
              primary: greyColor,
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("К оформлению",
                    style: TextStyle(
                        fontFamily: openSans700,
                        fontSize: 24,
                        letterSpacing: customLetterSpacing,
                        color: Colors.white)),
              ],
            )),
      ),
      bottomNavigationBar: MainMenu(),

    );


  }
}

