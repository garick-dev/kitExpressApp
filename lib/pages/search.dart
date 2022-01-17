import 'package:flutter/material.dart';
import 'package:testproject/custom_icons.dart';


//////////////////////COMPONENTS///////////////////

import 'package:testproject/component/global/search_app_bar.dart';
import 'package:testproject/component/global/gradient_app_bar.dart';
import 'package:testproject/component/global/menu.dart';




class SearchMain extends StatelessWidget {
  const SearchMain({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0xFFF9F9F9)),
      home: const SearchMainState(),
    );
  }
}

class SearchMainState extends StatefulWidget {
  const SearchMainState({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _SearchMainState();

}

class _SearchMainState extends State<SearchMainState>  with SingleTickerProviderStateMixin{


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
        toolbarHeight: 120,
        title: const SearchAppBar(),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Вы искали:",
                  style: TextStyle(fontFamily: montserrat500, fontSize: 18, letterSpacing: customLetterSpacing, color: greyColor),),
                  const Padding(padding: EdgeInsets.only(top: 20.0),),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child:
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                            Text("Штукатурка",
                             style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color:blackColor),),

                          Icon(CustomIcon.arrow_right, color: blackColor,)
                        ],),
                      const Padding(padding: EdgeInsets.only(top: 5.0)),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                            color: Color(0xFFE0E0E0),
                            borderRadius: BorderRadius.all(Radius.circular(3))
                        ),
                      )
                    ],),

                  ),
                  const Padding(padding: EdgeInsets.only(top: 20.0),),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child:
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                          Text("Гипсокартон",
                            style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color:blackColor),),

                          Icon(CustomIcon.arrow_right, color: blackColor,)
                        ],),
                      const Padding(padding: EdgeInsets.only(top: 5.0)),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                            color: Color(0xFFE0E0E0),
                            borderRadius: BorderRadius.all(Radius.circular(3))
                        ),
                      )
                    ],),

                  ),
                  const Padding(padding: EdgeInsets.only(top: 20.0),),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child:
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                          Text("Плиточный клей",
                            style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color:blackColor),),

                          Icon(CustomIcon.arrow_right, color: blackColor,)
                        ],),
                      const Padding(padding: EdgeInsets.only(top: 5.0)),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                            color: Color(0xFFE0E0E0),
                            borderRadius: BorderRadius.all(Radius.circular(3))
                        ),
                      )
                    ],),

                  ),
                  const Padding(padding: EdgeInsets.only(top: 20.0),),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child:
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                          Text("Черепица",
                            style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color:blackColor),),

                          Icon(CustomIcon.arrow_right, color: blackColor,)
                        ],),
                      const Padding(padding: EdgeInsets.only(top: 5.0)),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                            color: Color(0xFFE0E0E0),
                            borderRadius: BorderRadius.all(Radius.circular(3))
                        ),
                      )
                    ],),

                  ),
                  const Padding(padding: EdgeInsets.only(top: 60.0),),
                  const Text("Популярные:",
                    style: TextStyle(fontFamily: montserrat500, fontSize: 18, letterSpacing: customLetterSpacing, color: greyColor),),
                  const Padding(padding: EdgeInsets.only(top: 20.0),),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child:
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                          Text("Штукатурка",
                            style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color:blackColor),),

                          Icon(CustomIcon.arrow_right, color: blackColor,)
                        ],),
                      const Padding(padding: EdgeInsets.only(top: 5.0)),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                            color: Color(0xFFE0E0E0),
                            borderRadius: BorderRadius.all(Radius.circular(3))
                        ),
                      )
                    ],),

                  ),
                  const Padding(padding: EdgeInsets.only(top: 20.0),),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child:
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                          Text("Гипсокартон",
                            style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color:blackColor),),

                          Icon(CustomIcon.arrow_right, color: blackColor,)
                        ],),
                      const Padding(padding: EdgeInsets.only(top: 5.0)),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                            color: Color(0xFFE0E0E0),
                            borderRadius: BorderRadius.all(Radius.circular(3))
                        ),
                      )
                    ],),

                  ),
                  const Padding(padding: EdgeInsets.only(top: 20.0),),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child:
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                          Text("Плиточный клей",
                            style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color:blackColor),),

                          Icon(CustomIcon.arrow_right, color: blackColor,)
                        ],),
                      const Padding(padding: EdgeInsets.only(top: 5.0)),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                            color: Color(0xFFE0E0E0),
                            borderRadius: BorderRadius.all(Radius.circular(3))
                        ),
                      )
                    ],),

                  ),
                  const Padding(padding: EdgeInsets.only(top: 20.0),),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child:
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                          Text("Черепица",
                            style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color:blackColor),),

                          Icon(CustomIcon.arrow_right, color: blackColor,)
                        ],),
                      const Padding(padding: EdgeInsets.only(top: 5.0)),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                            color: Color(0xFFE0E0E0),
                            borderRadius: BorderRadius.all(Radius.circular(3))
                        ),
                      )
                    ],),

                  ),
                  const Padding(padding: EdgeInsets.only(top: 100.0),),

                ],
              ),

            ],),
        ),
      ),

      bottomNavigationBar: const MainMenu(),

    );


  }
}

