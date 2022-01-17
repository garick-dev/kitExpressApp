import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testproject/custom_icons.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {


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

  double topBarHeight = 50;

  @override
  Widget build(BuildContext context) {
    double StatusBarHeigth = MediaQuery.of(context).padding.top;
    return Scaffold(
       body:
        Container(
          width:  MediaQuery.of(context).size.width,
          child:
              Stack(
                children: [
              SingleChildScrollView(
              child:  Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [

                              const Padding(padding: EdgeInsets.only(top: 35.0),),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        minimumSize: Size.zero,
                                        padding: const EdgeInsets.all(5.0),
                                        tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                        shadowColor: greyColor,
                                      ),
                                      onPressed: () {},
                                      child:  Card(
                                        shadowColor: Colors.transparent,
                                        child:
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.38,
                                          height: 100,
                                          child: const Text("Строительные магазины",
                                            style: TextStyle(fontFamily: openSans400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor),),
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.contain,
                                              image: AssetImage("assets/helmet.png"),
                                            ),
                                            color: Colors.white,
                                          ),
                                        ),


                                      ),),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        minimumSize: Size.zero,
                                        padding: const EdgeInsets.all(5.0),
                                        tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                        shadowColor: greyColor,
                                      ),
                                      onPressed: () {},
                                      child:  Card(
                                        shadowColor: Colors.transparent,
                                        child:
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.38,
                                          height: 100,
                                          child: const Text("Заводы-производители строительных материалов",
                                            style: TextStyle(fontFamily: openSans400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor),),
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage("assets/tube.png"),
                                            ),
                                            color: Colors.white,
                                          ),
                                        ),


                                      ),),
                                  ],),
                              ),
                              const Padding(padding: EdgeInsets.only(top: 20.0),),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        minimumSize: Size.zero,
                                        padding: const EdgeInsets.all(5.0),
                                        tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                        shadowColor: greyColor,
                                      ),
                                      onPressed: () {},
                                      child:  Card(
                                        shadowColor: Colors.transparent,
                                        child:
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.38,
                                          height: 100,
                                          child: const Text("Нужны люди",
                                            style: TextStyle(fontFamily: openSans400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor),),
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.contain,
                                              image: AssetImage("assets/women.png"),
                                            ),
                                            color: Colors.white,
                                          ),
                                        ),


                                      ),),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        minimumSize: Size.zero,
                                        padding: const EdgeInsets.all(5.0),
                                        tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                        shadowColor: greyColor,
                                      ),
                                      onPressed: () {},
                                      child:  Card(
                                        shadowColor: Colors.transparent,
                                        child:
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.38,
                                          height: 100,
                                          child: const Text("Строительная техника в аренду",
                                            style: TextStyle(fontFamily: openSans400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor),),
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.contain,
                                              image: AssetImage("assets/excavator.png"),
                                            ),
                                            color: Colors.white,
                                          ),
                                        ),


                                      ),),



                                  ],),
                              ),
                              const Padding(padding: EdgeInsets.only(top: 20.0),),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        minimumSize: Size.zero,
                                        padding: const EdgeInsets.all(5.0),
                                        tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                        shadowColor: greyColor,
                                      ),
                                      onPressed: () {},
                                      child:  Card(
                                        shadowColor: Colors.transparent,
                                        child:
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.38,
                                          height: 100,
                                          child: const Text("Грузоперевозки",
                                            style: TextStyle(fontFamily: openSans400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor),),
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.contain,
                                              image: AssetImage("assets/track.png"),
                                            ),
                                            color: Colors.white,
                                          ),
                                        ),


                                      ),),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: orangeColor,
                                        minimumSize: Size.zero,
                                        padding: const EdgeInsets.all(5.0),
                                        tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                        shadowColor: greyColor,
                                      ),
                                      onPressed: () {},
                                      child:  Card(
                                        shadowColor: Colors.transparent,
                                        child:
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.38,
                                          height: 100,
                                          child: const Text("Создать задание",
                                            style: TextStyle(fontFamily: openSans400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor),),
                                          decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                colors: <Color>[
                                                  orangeColor,
                                                  Color(0xFFFBC41E),
                                                ]),
                                            image: DecorationImage(
                                              image: AssetImage("assets/catalog.png"),
                                            ),
                                            color: Colors.white,
                                          ),
                                        ),


                                      ),),
                                  ],),
                              ),

                              const Padding(padding: EdgeInsets.only(top: 50.0),),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [

                              const Padding(padding: EdgeInsets.only(top: 35.0),),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        minimumSize: Size.zero,
                                        padding: const EdgeInsets.all(5.0),
                                        tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                        shadowColor: greyColor,
                                      ),
                                      onPressed: () {},
                                      child:  Card(
                                        shadowColor: Colors.transparent,
                                        child:
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.38,
                                          height: 100,
                                          child: const Text("Строительные магазины",
                                            style: TextStyle(fontFamily: openSans400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor),),
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.contain,
                                              image: AssetImage("assets/helmet.png"),
                                            ),
                                            color: Colors.white,
                                          ),
                                        ),


                                      ),),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        minimumSize: Size.zero,
                                        padding: const EdgeInsets.all(5.0),
                                        tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                        shadowColor: greyColor,
                                      ),
                                      onPressed: () {},
                                      child:  Card(
                                        shadowColor: Colors.transparent,
                                        child:
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.38,
                                          height: 100,
                                          child: const Text("Заводы-производители строительных материалов",
                                            style: TextStyle(fontFamily: openSans400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor),),
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage("assets/tube.png"),
                                            ),
                                            color: Colors.white,
                                          ),
                                        ),


                                      ),),
                                  ],),
                              ),
                              const Padding(padding: EdgeInsets.only(top: 20.0),),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        minimumSize: Size.zero,
                                        padding: const EdgeInsets.all(5.0),
                                        tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                        shadowColor: greyColor,
                                      ),
                                      onPressed: () {},
                                      child:  Card(
                                        shadowColor: Colors.transparent,
                                        child:
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.38,
                                          height: 100,
                                          child: const Text("Нужны люди",
                                            style: TextStyle(fontFamily: openSans400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor),),
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.contain,
                                              image: AssetImage("assets/women.png"),
                                            ),
                                            color: Colors.white,
                                          ),
                                        ),


                                      ),),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        minimumSize: Size.zero,
                                        padding: const EdgeInsets.all(5.0),
                                        tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                        shadowColor: greyColor,
                                      ),
                                      onPressed: () {},
                                      child:  Card(
                                        shadowColor: Colors.transparent,
                                        child:
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.38,
                                          height: 100,
                                          child: const Text("Строительная техника в аренду",
                                            style: TextStyle(fontFamily: openSans400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor),),
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.contain,
                                              image: AssetImage("assets/excavator.png"),
                                            ),
                                            color: Colors.white,
                                          ),
                                        ),


                                      ),),



                                  ],),
                              ),
                              const Padding(padding: EdgeInsets.only(top: 20.0),),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        minimumSize: Size.zero,
                                        padding: const EdgeInsets.all(5.0),
                                        tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                        shadowColor: greyColor,
                                      ),
                                      onPressed: () {},
                                      child:  Card(
                                        shadowColor: Colors.transparent,
                                        child:
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.38,
                                          height: 100,
                                          child: const Text("Грузоперевозки",
                                            style: TextStyle(fontFamily: openSans400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor),),
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.contain,
                                              image: AssetImage("assets/track.png"),
                                            ),
                                            color: Colors.white,
                                          ),
                                        ),


                                      ),),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: orangeColor,
                                        minimumSize: Size.zero,
                                        padding: const EdgeInsets.all(5.0),
                                        tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                        shadowColor: greyColor,
                                      ),
                                      onPressed: () {},
                                      child:  Card(
                                        shadowColor: Colors.transparent,
                                        child:
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.38,
                                          height: 100,
                                          child: const Text("Создать задание",
                                            style: TextStyle(fontFamily: openSans400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor),),
                                          decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                colors: <Color>[
                                                  orangeColor,
                                                  Color(0xFFFBC41E),
                                                ]),
                                            image: DecorationImage(
                                              image: AssetImage("assets/catalog.png"),
                                            ),
                                            color: Colors.white,
                                          ),
                                        ),


                                      ),),
                                  ],),
                              ),

                              const Padding(padding: EdgeInsets.only(top: 50.0),),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

              ],),
              ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container (
                  padding: EdgeInsets.only(top: StatusBarHeigth, left: 20.0, right: 20, bottom: 20.0),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 100,
                        child: Text(
                          "KitExpressKitEsKitExpressKitEs",
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 24,
                            letterSpacing: customLetterSpacing,
                            fontFamily: openSans700,
                            overflow: TextOverflow.fade,
                          ),
                        ),),
                      Container(
                        child:  const Icon(CustomIcon.burger, color: Colors.white, size: 18,),
                        padding: const EdgeInsets.only(right: 10.0),
                      )

                    ],),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            orangeColor,
                            Color(0xFFFBC41E),
                          ])
                  ),
                ),)
              ],)




        )







    );
  }
}
