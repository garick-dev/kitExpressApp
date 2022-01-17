import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testproject/custom_icons.dart';


//////////////////////COMPONENTS///////////////////

import 'package:testproject/component/global/gradient_app_bar.dart';
import 'package:testproject/component/global/menu.dart';

import 'package:testproject/component/local/technics/preview_technics_card.dart';

class SelectProductTransportation extends StatefulWidget {
  const SelectProductTransportation({Key? key}) : super(key: key);

  @override
  State<SelectProductTransportation> createState() => _SelectProductTransportationState();
}

class _SelectProductTransportationState extends State<SelectProductTransportation> {

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
                  children: [
                    const Expanded( child: Text("Грузоперевозки",
                      maxLines: 5,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 24,
                        letterSpacing: customLetterSpacing,
                        fontFamily: openSans700,
                        overflow: TextOverflow.fade,
                        height: 0.9,
                      ),)),
                    Container(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: const Icon(CustomIcon.close, size: 15))
                  ],),
                const Padding(padding: EdgeInsets.only(top: 15.0),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        iconSize: 25,
                        onPressed: (){},
                        icon: Image.asset("assets/sort.png")),
                    const Padding(padding: EdgeInsets.only(left: 5.0),),
                    IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        iconSize: 25,
                        onPressed: (){},
                        icon: Image.asset("assets/filter.png")),
                    const Padding(padding: EdgeInsets.only(left: 5.0),),
                    IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        iconSize: 25,
                        onPressed: (){},
                        icon: Image.asset("assets/search.png")),


                  ],)
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
                children: [
                  /////////////////////////МЕНЮ - ФИЛЬТР//////////////////////
                  SizedBox(width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(children: [
                      const Icon(CustomIcon.burger, size: 15, color: orangeColor),
                      const Padding(padding: EdgeInsets.only(left: 15.0)),
                      SizedBox(
                        width: 294,
                        height: 30,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            const Padding(padding: EdgeInsets.only(left: 5.0)),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                              height: 25,
                              child:
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  padding: EdgeInsets.zero,
                                ),
                                onPressed: (){}, child: const Text("Экскаваторы",
                                style: TextStyle(fontFamily: montserrat500, fontSize: 12, letterSpacing: customLetterSpacing, color: blackColor),),),

                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                boxShadow: [
                                  BoxShadow(
                                    color: greyColor,
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  )],
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(left: 5.0)),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                              height: 25,
                              child:
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  padding: EdgeInsets.zero,
                                ),
                                onPressed: (){}, child: const Text("Панелевозы",
                                style: TextStyle(fontFamily: montserrat500, fontSize: 12, letterSpacing: customLetterSpacing, color: blackColor),),),

                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                boxShadow: [
                                  BoxShadow(
                                    color: greyColor,
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  )],
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(left: 5.0)),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                              height: 25,
                              child:
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  padding: EdgeInsets.zero,
                                ),
                                onPressed: (){}, child: const Text("Минипогрузчики",
                                style: TextStyle(fontFamily: montserrat500, fontSize: 12, letterSpacing: customLetterSpacing, color: blackColor),),),

                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                boxShadow: [
                                  BoxShadow(
                                    color: greyColor,
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  )],
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(left: 5.0)),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                              height: 25,
                              child:
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  padding: EdgeInsets.zero,
                                ),
                                onPressed: (){}, child: const Text("Минипогрузчики",
                                style: TextStyle(fontFamily: montserrat500, fontSize: 12, letterSpacing: customLetterSpacing, color: blackColor),),),

                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                boxShadow: [
                                  BoxShadow(
                                    color: greyColor,
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  )],
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(left: 5.0)),



                          ],),



                        ),
                      ),



                    ],),
                  ),
                  /////////////////////////СОЗДАТЬ ЗАДАНИЕ КНОПКА//////////////////////
                  const Padding(padding: EdgeInsets.only(top: 15.0),),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 42,
                    child:   ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: yellowColor,
                        ),
                        onPressed: (){},
                        child: const Text("Создать задание",
                            style: TextStyle(fontFamily: openSans700, fontSize: 20, letterSpacing: customLetterSpacing))),),
                  /////////////////////////КАРТОЧКИ ТОВАРОВ//////////////////////
                  const Padding(padding: EdgeInsets.only(top: 15.0),),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(children: [
                      /////////////////////////СТРОКА КАРТОЧЕК //////////////////////
                      Row(children: const[
                        PreviewTechnicsCard(),
                        Padding(padding: EdgeInsets.only(left: 10.0),),
                        PreviewTechnicsCard(),

                      ],),
                      const Padding(padding: EdgeInsets.only(top: 15.0),),
                      /////////////////////////СТРОКА КАРТОЧЕК //////////////////////
                      Row(children: const[
                        PreviewTechnicsCard(),
                        Padding(padding: EdgeInsets.only(left: 10.0),),
                        PreviewTechnicsCard(),
                      ],),
                      const Padding(padding: EdgeInsets.only(top: 185.0),),
                    ],),


                  )

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
