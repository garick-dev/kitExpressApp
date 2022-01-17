import 'package:flutter/material.dart';
import 'package:testproject/custom_icons.dart';


class CountAutoTechnics extends StatelessWidget {
  const CountAutoTechnics({Key? key}) : super(key: key);


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
          const Text("Количество машин",
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
                      Text("1",
                        style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: blackColor, letterSpacing: customLetterSpacing),),
                      Padding(padding: EdgeInsets.only(top:5.0),),
                      Text("2 рабочих",
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
                      Text("2",
                        style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: blackColor, letterSpacing: customLetterSpacing),),
                      Padding(padding: EdgeInsets.only(top:5.0),),
                      Text("6 рабочих",
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
                      Text("6",
                        style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: blackColor, letterSpacing: customLetterSpacing),),
                      Padding(padding: EdgeInsets.only(top:5.0),),
                      Text("12 рабочих",
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
                      Text("6",
                        style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: blackColor, letterSpacing: customLetterSpacing),),
                      Padding(padding: EdgeInsets.only(top:5.0),),
                      Text("12 рабочих",
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
