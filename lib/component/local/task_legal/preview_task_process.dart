import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testproject/custom_icons.dart';

class PreviewTaskInProcess extends StatefulWidget {
  const PreviewTaskInProcess({Key? key}) : super(key: key);

  @override
  State<PreviewTaskInProcess> createState() => _PreviewTaskInProcessState();
}

class _PreviewTaskInProcessState extends State<PreviewTaskInProcess> {

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
          /////////////////////////АВАТАР, ИМЯ, СПЕЦИАЛЬНОСТЬ/////////////////////
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
                      children: [
                        const Text("Анисимова Татьяна",
                          style: TextStyle(fontFamily: openSans600, fontSize: 16, letterSpacing: customLetterSpacing, color: blackColor),),
                        IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            iconSize: 18,
                            onPressed: () {},
                            icon: const Icon(CustomIcon.arrow_right, size: 18))
                      ],),
                    /////////////////////////ДАТА/////////////////////
                    const Text("18 октября 2021, 18:00",
                        style: TextStyle(fontFamily: openSans400, fontSize: 12, letterSpacing: customLetterSpacing, color: greyColor)),
                    const Padding(padding: EdgeInsets.only(top: 10.0),),
                    /////////////////////////ГОРОД/////////////////////
                    const Text("Москва",
                        style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: blackColor)),
                  ],)
            ),
          ],),
          /////////////////////////ИНФОРМАЦИЯ/////////////////////
          const Padding(padding: EdgeInsets.only(top: 15.0)),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /////////////////////////ИНФОРМАЦИЯ О РАБОТЕ/////////////////////
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Построить дом мечты",
                      style: TextStyle(fontFamily: montserrat600, fontSize: 16, letterSpacing: customLetterSpacing, color: blackColor),),
                    Text("Застройка",
                        style: TextStyle(fontFamily: montserrat400, fontSize: 12, letterSpacing: customLetterSpacing, color: blackColor)),
                  ],),
                /////////////////////////ОПИСАНИЕ РАБОТЫ/////////////////////
                const Padding(padding: EdgeInsets.only(top: 20.0)),
                const Text("Хочу найти дизайнера-проектировщика, который может в архикад, а так же поможет спроектировать дом моей мечты ",
                    style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: blackColor)),


              ],),),
          /////////////////////////ОТКЛИКНУТЬСЯ КНОПКА//////////////////////
          const Padding(padding: EdgeInsets.only(top: 15.0),),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 42,
            child:   ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: (){},
                child: const Text("Перейти в чат",
                    style: TextStyle(fontFamily: openSans700, fontSize: 20, letterSpacing: customLetterSpacing, color: orangeColor))),),



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
