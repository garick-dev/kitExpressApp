import 'package:flutter/material.dart';



//////////////////////COMPONENTS///////////////////

import 'package:testproject/component/global/search_app_bar.dart';
import 'package:testproject/component/global/gradient_app_bar.dart';



class SearchCity extends StatelessWidget {
  const SearchCity({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0xFFF9F9F9)),
      home: const SearchCityState(),
    );
  }
}

class SearchCityState extends StatefulWidget {
  const SearchCityState({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _SearchCityState();

}

class _SearchCityState extends State<SearchCityState>  with SingleTickerProviderStateMixin{


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
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child:
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const[
                            Text("Москва",
                            style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color:blackColor),),
                            Text("г.Москва",
                              style: TextStyle(fontFamily: montserrat500, fontSize: 16, letterSpacing: customLetterSpacing, color:greyColor),),
                          ],),
                          Image.asset("assets/checkbox-active.png"),
                        ],),
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
                  const Padding(padding: EdgeInsets.only(top: 15.0),),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child:
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const[
                              Text("Липецк",
                                style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color:blackColor),),
                              Text("г.Липецк, обл.Липецкая, Россия",
                                style: TextStyle(fontFamily: montserrat500, fontSize: 16, letterSpacing: customLetterSpacing, color:greyColor),),
                            ],),
                        ],),
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
                  const Padding(padding: EdgeInsets.only(top: 15.0),),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child:
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const[
                              Text("Санкт-Петербург",
                                style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color:blackColor),),
                              Text("г.Санкт-Петербург, Россия",
                                style: TextStyle(fontFamily: montserrat500, fontSize: 16, letterSpacing: customLetterSpacing, color:greyColor),),
                            ],),
                        ],),
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
                  const Padding(padding: EdgeInsets.only(top: 15.0),),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child:
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const[
                              Text("Екатеринбург",
                                style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color:blackColor),),
                              Text("г.Екатеринбург, Россия",
                                style: TextStyle(fontFamily: montserrat500, fontSize: 16, letterSpacing: customLetterSpacing, color:greyColor),),
                            ],),
                        ],),
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
                ],
              ),

            ],),
        ),
      ),


    );


  }
}

