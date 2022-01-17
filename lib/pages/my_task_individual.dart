import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testproject/custom_icons.dart';


//////////////////////COMPONENTS///////////////////

import 'package:testproject/component/global/gradient_app_bar.dart';
import 'package:testproject/component/global/menu.dart';






class MyTaskIndividual extends StatelessWidget {
  const MyTaskIndividual({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0xFFF9F9F9)),
      home: const MyTaskIndividualState(),
    );
  }
}

class MyTaskIndividualState extends StatefulWidget {
  const MyTaskIndividualState({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MyTaskIndividualState();

}

class _MyTaskIndividualState extends State<MyTaskIndividualState>  with SingleTickerProviderStateMixin{


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
                    "Мои задания",
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
                children: [
                  const Padding(padding: EdgeInsets.only(top: 10.0),),
                  /////////////////////////ПОПАП ЗАДАНИЕ ОТМЕНЕНО//////////////////////
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Задание отменено!",
                              style: TextStyle(fontSize: 16, fontFamily: montserrat400, color: blackColor, letterSpacing: customLetterSpacing),),
                            IconButton(
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              onPressed: () {},
                              icon: const Icon(CustomIcon.close, size: 10),),
                          ]
                      ),
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
                  ),
                  const Padding(padding: EdgeInsets.only(top: 15.0),),
                  /////////////////////////Желтая кнопка//////////////////////
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: yellowColor,

                          ),
                          onPressed: (){},
                          child: const Text("Создать задание",
                            style: TextStyle(fontFamily: openSans700, fontSize: 20, letterSpacing: customLetterSpacing),))
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20.0),),
                  /////////////////////////Красный статус//////////////////////
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          const Text("Построить дом мечты",
                          style: TextStyle(fontFamily: openSans700, fontSize: 19, letterSpacing: customLetterSpacing, color: blackColor),),
                          IconButton(
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              onPressed: () {},
                              icon: const Icon(CustomIcon.arrow_right, size: 16,))
                        ],),
                        const Padding(padding: EdgeInsets.only(top: 20.0),),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const[
                            Text("Статус:",
                              style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: greyColor),),
                            Padding(padding: EdgeInsets.only(top: 5.0),),
                            Text("Поиск исполнителя",
                                style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: Colors.red)),
                          ],),
                      ],),
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
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20.0),),
                  /////////////////////////Желтый статус//////////////////////
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Построить дом мечты",
                                style: TextStyle(fontFamily: openSans700, fontSize: 19, letterSpacing: customLetterSpacing, color: blackColor),),
                              IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  onPressed: () {},
                                  icon: const Icon(CustomIcon.arrow_right, size: 16,))
                            ],),
                          const Padding(padding: EdgeInsets.only(top: 20.0),),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const[
                              Text("Статус:",
                                style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: greyColor),),
                              Padding(padding: EdgeInsets.only(top: 5.0),),
                              Text("Исполнитель найден",
                                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: orangeColor)),
                            ],),
                        ],),
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
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20.0),),
                  /////////////////////////Зеленый статус//////////////////////
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("assets/checkbox-active.png"),
                              const Text("Построить дом мечты",
                                style: TextStyle(fontFamily: openSans700, fontSize: 19, letterSpacing: customLetterSpacing, color: blackColor),),
                              IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  onPressed: () {},
                                  icon: const Icon(CustomIcon.arrow_right, size: 16,))
                            ],),
                          const Padding(padding: EdgeInsets.only(top: 20.0),),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const[
                              Text("Статус:",
                                style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: greyColor),),
                              Padding(padding: EdgeInsets.only(top: 5.0),),
                              Text("Выполнено",
                                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: Colors.green)),
                            ],),
                        ],),
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
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20.0),),

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

