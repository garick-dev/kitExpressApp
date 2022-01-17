import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testproject/custom_icons.dart';


import 'package:testproject/component/local/createdTask/photo.dart';

class MyTaskRespondCompleted extends StatefulWidget {
  const MyTaskRespondCompleted({Key? key}) : super(key: key);

  @override
  State<MyTaskRespondCompleted> createState() => _MyTaskRespondCompletedState();
}

class _MyTaskRespondCompletedState extends State<MyTaskRespondCompleted> {

  /////////////////////////GLOBAL//////////////////////

  //fonts
  static const montserrat400 = "Montserrat400";
  static const montserrat500 = "Montserrat500";
  static const montserrat600 = "Montserrat600";
  static const openSans400 = "OpenSans400";
  static const openSans600 = "OpenSans600";
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
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /////////////////////////АВАТАР, ИМЯ, ДАТА, ГОРОД/////////////////////
          Row(children: [
            /////////////////////////АВАТАР/////////////////////
            SizedBox(
              width: 75,
              height: 75,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(35)),
                child: FittedBox(fit: BoxFit.cover, child: Image.asset("assets/avatar.png"),),
              ),
            ),
            const Padding(padding: EdgeInsets.only(left: 10.0),),
            /////////////////////////ИМЯ, ДАТА, ГОРОД/////////////////////
            SizedBox(
                width: 209,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /////////////////////////ИМЯ/////////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const[
                        Text("Анисимова Татьяна",
                          style: TextStyle(fontFamily: openSans600, fontSize: 16, letterSpacing: customLetterSpacing, color: blackColor),),
                      ],),
                    /////////////////////////ДАТА/////////////////////
                    const Text("18 октября 2021, 18:00",
                        style: TextStyle(fontFamily: openSans400, fontSize: 12, letterSpacing: customLetterSpacing, color: greyColor)),


                  ],)
            ),
          ],),
          /////////////////////////ПЕРЕЙТИ В ЧАТ КНОПКА//////////////////////
          const Padding(padding: EdgeInsets.only(top: 15.0),),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 40,
            child:   ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: (){},
                child: const Text("Перейти в чат",
                    style: TextStyle(fontFamily: openSans700, fontSize: 20, letterSpacing: customLetterSpacing, color: orangeColor))),),
          const Padding(padding: EdgeInsets.only(top: 15.0),),
          /////////////////////////Статус//////////////////////
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
              Text("Статус:",
                style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: greyColor),),
              Padding(padding: EdgeInsets.only(top: 5.0),),
              Text("Выполено",
                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: Colors.green)),
            ],),
          const Padding(padding: EdgeInsets.only(top: 20.0),),
          /////////////////////////Категория//////////////////////
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
              Text("Категория:",
                style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: greyColor),),
              Padding(padding: EdgeInsets.only(top: 5.0),),
              Text("Дизайн",
                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing)),
            ],),
          const Padding(padding: EdgeInsets.only(top: 20.0),),
          /////////////////////////Город//////////////////////
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
              Text("Город:",
                style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: greyColor),),
              Padding(padding: EdgeInsets.only(top: 5.0),),
              Text("Москва",
                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing)),
            ],),
          const Padding(padding: EdgeInsets.only(top: 20.0),),
          /////////////////////////Описание//////////////////////
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
              Text("Описание:",
                style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: greyColor),),
              Padding(padding: EdgeInsets.only(top: 5.0),),
              Text("Хочу найти дизайнера-проектировщика, который может в архикад, а так же поможет спроектировать дом моей мечты ",
                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing)),
            ],),
          const Padding(padding: EdgeInsets.only(top: 20.0),),
          /////////////////////////Инфо о прикрепленных фото//////////////////////
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Прикрепленные фото (8):",
                  style: TextStyle(fontFamily: montserrat500, fontSize: 16, letterSpacing: customLetterSpacing)),
              const Padding(padding: EdgeInsets.only(top: 5.0),),
              Row(children: const [
                CreatedTaskPhoto(),
                Padding(padding: EdgeInsets.only(left: 8.0),),
                CreatedTaskPhoto(),
                Padding(padding: EdgeInsets.only(left: 8.0),),
                CreatedTaskPhoto(),
                Padding(padding: EdgeInsets.only(left: 8.0),),
                CreatedTaskPhoto(),
                Padding(padding: EdgeInsets.only(left: 8.0),),
                CreatedTaskPhoto(),

              ],),
              const Padding(padding: EdgeInsets.only(top: 5.0),),
              Row(children: const [
                CreatedTaskPhoto(),
                Padding(padding: EdgeInsets.only(left: 8.0),),
                CreatedTaskPhoto(),
                Padding(padding: EdgeInsets.only(left: 8.0),),
                CreatedTaskPhoto(),

              ],),
            ],),
          const Padding(padding: EdgeInsets.only(top: 20.0),),



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
