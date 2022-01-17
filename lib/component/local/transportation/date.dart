import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testproject/custom_icons.dart';


class DateTransportation extends StatelessWidget {
  const DateTransportation({Key? key}) : super(key: key);


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
      padding: EdgeInsets.all(20.0),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /////////////////////////ЗАГОЛОВОК//////////////////////
          const Text("Когда",
            style: TextStyle(fontFamily: openSans700, fontSize: 20, letterSpacing: customLetterSpacing, color: blackColor),),
          const Padding(padding: EdgeInsets.only(top: 20.0),),
          /////////////////////////СТРОКА C ЭЛЕМЕНТАМИ//////////////////////
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.80,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Column(children: const[
                      Text("9 окт",
                        style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: blackColor, letterSpacing: customLetterSpacing),),
                      Padding(padding: EdgeInsets.only(top:5.0),),
                      Text("cб",
                          style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: greyColor, letterSpacing: customLetterSpacing)),
                    ],),
                    decoration: BoxDecoration(
                      border: Border.all(color: yellowColor, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(3)),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 10.0)),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Column(children: const[
                      Text("10 окт",
                        style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: blackColor, letterSpacing: customLetterSpacing),),
                      Padding(padding: EdgeInsets.only(top:5.0),),
                      Text("вс",
                          style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: greyColor, letterSpacing: customLetterSpacing)),
                    ],),
                    decoration: BoxDecoration(
                      border: Border.all(color: greyColor, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(3)),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 10.0)),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Column(children: const[
                      Text("11 окт",
                        style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: blackColor, letterSpacing: customLetterSpacing),),
                      Padding(padding: EdgeInsets.only(top:5.0),),
                      Text("пн",
                          style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: greyColor, letterSpacing: customLetterSpacing)),
                    ],),
                    decoration: BoxDecoration(
                      border: Border.all(color: greyColor, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(3)),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 10.0)),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Column(children: const[
                      Text("12 окт",
                        style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: blackColor, letterSpacing: customLetterSpacing),),
                      Padding(padding: EdgeInsets.only(top:5.0),),
                      Text("вт",
                          style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: greyColor, letterSpacing: customLetterSpacing)),
                    ],),
                    decoration: BoxDecoration(
                      border: Border.all(color: greyColor, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(3)),
                    ),
                  ),
                ],),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 25.0)),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.80,
            height: 270,
            child: Scrollbar(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      /////////////////////////СТРОКА ВРЕМЕНИ//////////////////////
                      Column(children: [
                        /////////////////////////СТРОКА ОСНОВНАЯ//////////////////////
                        Row(children: [
                          Image.asset("assets/checkbox-active.png"),
                          const Padding(padding: EdgeInsets.only(left: 7.0),),
                          const Text("10:00 - 10:30",
                            style: TextStyle(fontFamily: montserrat400,
                                fontSize: 20,
                                letterSpacing: customLetterSpacing,
                                color: blackColor),)
                        ],),
                        const Padding(padding: EdgeInsets.only(top: 5.0),),
                        /////////////////////////НИЖНЯЯ ЧЕРТА//////////////////////
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.9,
                          height: 1,
                          decoration: const BoxDecoration(
                            color: greyColor,
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                          ),
                        )
                      ],),
                      /////////////////////////СТРОКА ВРЕМЕНИ//////////////////////
                      const Padding(padding: EdgeInsets.only(top: 10.0)),
                      Column(children: [
                        /////////////////////////СТРОКА ОСНОВНАЯ//////////////////////
                        Row(children: [
                          Image.asset("assets/checkbox-deactive.png"),
                          const Padding(padding: EdgeInsets.only(left: 7.0),),
                          const Text("10:30 - 11:00",
                            style: TextStyle(fontFamily: montserrat400,
                                fontSize: 20,
                                letterSpacing: customLetterSpacing,
                                color: blackColor),)
                        ],),
                        const Padding(padding: EdgeInsets.only(top: 5.0),),
                        /////////////////////////НИЖНЯЯ ЧЕРТА//////////////////////
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.9,
                          height: 1,
                          decoration: const BoxDecoration(
                            color: greyColor,
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                          ),
                        )
                      ],),
                      /////////////////////////СТРОКА ВРЕМЕНИ//////////////////////
                      const Padding(padding: EdgeInsets.only(top: 10.0)),
                      Column(children: [
                        /////////////////////////СТРОКА ОСНОВНАЯ//////////////////////
                        Row(children: [
                          Image.asset("assets/checkbox-deactive.png"),
                          const Padding(padding: EdgeInsets.only(left: 7.0),),
                          const Text("11:00 - 11:30",
                            style: TextStyle(fontFamily: montserrat400,
                                fontSize: 20,
                                letterSpacing: customLetterSpacing,
                                color: blackColor),)
                        ],),
                        const Padding(padding: EdgeInsets.only(top: 5.0),),
                        /////////////////////////НИЖНЯЯ ЧЕРТА//////////////////////
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.9,
                          height: 1,
                          decoration: const BoxDecoration(
                            color: greyColor,
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                          ),
                        )
                      ],),
                      /////////////////////////СТРОКА ВРЕМЕНИ//////////////////////
                      const Padding(padding: EdgeInsets.only(top: 10.0)),
                      Column(children: [
                        /////////////////////////СТРОКА ОСНОВНАЯ//////////////////////
                        Row(children: [
                          Image.asset("assets/checkbox-deactive.png"),
                          const Padding(padding: EdgeInsets.only(left: 7.0),),
                          const Text("11:30 - 12:00",
                            style: TextStyle(fontFamily: montserrat400,
                                fontSize: 20,
                                letterSpacing: customLetterSpacing,
                                color: blackColor),)
                        ],),
                        const Padding(padding: EdgeInsets.only(top: 5.0),),
                        /////////////////////////НИЖНЯЯ ЧЕРТА//////////////////////
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.9,
                          height: 1,
                          decoration: const BoxDecoration(
                            color: greyColor,
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                          ),
                        )
                      ],),
                      /////////////////////////СТРОКА ВРЕМЕНИ//////////////////////
                      const Padding(padding: EdgeInsets.only(top: 10.0)),
                      Column(children: [
                        /////////////////////////СТРОКА ОСНОВНАЯ//////////////////////
                        Row(children: [
                          Image.asset("assets/checkbox-deactive.png"),
                          const Padding(padding: EdgeInsets.only(left: 7.0),),
                          const Text("12:00 - 12:30",
                            style: TextStyle(fontFamily: montserrat400,
                                fontSize: 20,
                                letterSpacing: customLetterSpacing,
                                color: blackColor),)
                        ],),
                        const Padding(padding: EdgeInsets.only(top: 5.0),),
                        /////////////////////////НИЖНЯЯ ЧЕРТА//////////////////////
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.9,
                          height: 1,
                          decoration: const BoxDecoration(
                            color: greyColor,
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                          ),
                        )
                      ],),
                      /////////////////////////СТРОКА ВРЕМЕНИ//////////////////////
                      const Padding(padding: EdgeInsets.only(top: 10.0)),
                      Column(children: [
                        /////////////////////////СТРОКА ОСНОВНАЯ//////////////////////
                        Row(children: [
                          Image.asset("assets/checkbox-deactive.png"),
                          const Padding(padding: EdgeInsets.only(left: 7.0),),
                          const Text("12:30 - 13:00",
                            style: TextStyle(fontFamily: montserrat400,
                                fontSize: 20,
                                letterSpacing: customLetterSpacing,
                                color: blackColor),)
                        ],),
                        const Padding(padding: EdgeInsets.only(top: 5.0),),
                        /////////////////////////НИЖНЯЯ ЧЕРТА//////////////////////
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.9,
                          height: 1,
                          decoration: const BoxDecoration(
                            color: greyColor,
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                          ),
                        )
                      ],),
                      /////////////////////////СТРОКА ВРЕМЕНИ//////////////////////
                      const Padding(padding: EdgeInsets.only(top: 10.0)),
                      Column(children: [
                        /////////////////////////СТРОКА ОСНОВНАЯ//////////////////////
                        Row(children: [
                          Image.asset("assets/checkbox-deactive.png"),
                          const Padding(padding: EdgeInsets.only(left: 7.0),),
                          const Text("13:00 - 13:30",
                            style: TextStyle(fontFamily: montserrat400,
                                fontSize: 20,
                                letterSpacing: customLetterSpacing,
                                color: blackColor),)
                        ],),
                        const Padding(padding: EdgeInsets.only(top: 5.0),),
                        /////////////////////////НИЖНЯЯ ЧЕРТА//////////////////////
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.9,
                          height: 1,
                          decoration: const BoxDecoration(
                            color: greyColor,
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                          ),
                        )
                      ],),
                      /////////////////////////СТРОКА ВРЕМЕНИ//////////////////////
                      const Padding(padding: EdgeInsets.only(top: 10.0)),
                      Column(children: [
                        /////////////////////////СТРОКА ОСНОВНАЯ//////////////////////
                        Row(children: [
                          Image.asset("assets/checkbox-deactive.png"),
                          const Padding(padding: EdgeInsets.only(left: 7.0),),
                          const Text("13:00 - 13:30",
                            style: TextStyle(fontFamily: montserrat400,
                                fontSize: 20,
                                letterSpacing: customLetterSpacing,
                                color: blackColor),)
                        ],),
                        const Padding(padding: EdgeInsets.only(top: 5.0),),
                        /////////////////////////НИЖНЯЯ ЧЕРТА//////////////////////
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.9,
                          height: 1,
                          decoration: const BoxDecoration(
                            color: greyColor,
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                          ),
                        )
                      ],),
                    ],);

                }
              ),
              // scrollDirection: Axis.vertical,

            ),
          ),
        ],),


      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        const BorderRadius.all(Radius.circular(3)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0,0), // changes position of shadow
          ),
        ],
      ),

    );
  }
}
