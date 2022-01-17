import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testproject/custom_icons.dart';


//////////////////////COMPONENTS///////////////////

import 'package:testproject/component/global/gradient_app_bar.dart';
import 'package:testproject/component/global/menu.dart';
import 'package:testproject/component/local/task_legal/my_task_respond_new.dart';

class MyTaskLegal extends StatefulWidget {
  const MyTaskLegal({Key? key}) : super(key: key);

  @override
  State<MyTaskLegal> createState() => _MyTaskLegalState();
}

class _MyTaskLegalState extends State<MyTaskLegal> {

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
        leadingWidth: 15.0,
        toolbarHeight: 110,
        title: SizedBox(
            width: 350,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const[
                    SizedBox(
                        width: 200,
                        child: Text("Построить дом мечты", softWrap: true,
                          style: TextStyle(
                            fontSize: 24,
                            letterSpacing: customLetterSpacing,
                            fontFamily: openSans700,
                            overflow: TextOverflow.fade,
                            height: 0.9,
                          ),)),
                    SizedBox(
                        child: const Icon(CustomIcon.burger, size: 15))
                  ],),
              ],
            )




        ) ,


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
                       MyTaskRespondNew(),
                       Padding(padding: EdgeInsets.only(top: 45.0),)


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
