import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testproject/custom_icons.dart';


//////////////////////COMPONENTS///////////////////

import 'package:testproject/component/global/gradient_app_bar.dart';
import 'package:testproject/component/global/menu.dart';
import 'package:testproject/component/global/response_item.dart';




class Responses extends StatelessWidget {
  const Responses({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0xFFF9F9F9)),
      home: const ResponsesState(),
    );
  }
}

class ResponsesState extends StatefulWidget {
  const ResponsesState({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _ResponsesState();

}

class _ResponsesState extends State<ResponsesState>  with SingleTickerProviderStateMixin{


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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 200,
                  child: Text(
                    "Отклики",
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 24,
                      letterSpacing: customLetterSpacing,
                      fontFamily: openSans700,
                      overflow: TextOverflow.fade,
                    ),
                  ),),
                IconButton(
                    padding: const EdgeInsets.only(top: 10.0),
                    constraints: const BoxConstraints(),
                    onPressed: (){},
                    icon: const Icon(CustomIcon.burger, color: Colors.white, size: 18))


              ],),
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
                  Padding(padding: EdgeInsets.only(top: 10.0),),
                  /////////////////////////Отклик/////////////////////
                 ResponseItem(),
                  Padding(padding: EdgeInsets.only(top: 10.0),),
                  /////////////////////////Отклик/////////////////////
                  ResponseItem(),



                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: const MainMenu(),

    );


  }
}

