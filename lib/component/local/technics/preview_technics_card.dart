import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testproject/component/local/technics/slider_preview_technics_card.dart';
import 'package:testproject/custom_icons.dart';



class PreviewTechnicsCard extends StatefulWidget {
  const PreviewTechnicsCard({Key? key}) : super(key: key);

  @override
  State<PreviewTechnicsCard> createState() => _PreviewTechnicsCardState();
}

class _PreviewTechnicsCardState extends State<PreviewTechnicsCard> {

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
      width: 155,
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          /////////////////////////СЛАЙДЕР//////////////////////
          const SliderImagePreviewTechnicsCard(),

          /////////////////////////ИНФО//////////////////////
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(top: 20.0)),
              /////////////////////////НАИМЕНОВАНИЕ//////////////////////
              SizedBox(
                  width: 135,
                  child: Row(children: const[
                     Expanded(
                      child: Text("11 790р смена JCB 3CX Super",
                        maxLines: 5,
                        style: TextStyle(fontFamily: montserrat600, fontSize: 14, letterSpacing: customLetterSpacing),)
                  )
                  ],),

              ),


              const Padding(padding: EdgeInsets.only(top: 15.0)),
              /////////////////////////Категория//////////////////////
              const Text("Экскаваторы",
                  style: TextStyle(fontFamily: montserrat500, fontSize: 12, letterSpacing: customLetterSpacing, color: greyColor)),
              const Padding(padding: EdgeInsets.only(top: 5.0)),
              /////////////////////////РЕЙТИНГ//////////////////////
              Image.asset("assets/stars.png", width: 50, height: 10,),
              const Padding(padding: EdgeInsets.only(top: 10.0)),
              /////////////////////////КНОПКА//////////////////////
              SizedBox(
                width: 145,
                height: 25,
                child:   ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: orangeColor,
                    ),
                    onPressed: (){},
                    child: const Text("Выбрать",
                        style: TextStyle(fontFamily: openSans700, fontSize: 14, letterSpacing: customLetterSpacing))),)

            ],),



        ],),
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
    );
  }
}
