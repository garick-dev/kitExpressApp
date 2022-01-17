import 'package:flutter/material.dart';
import 'package:testproject/custom_icons.dart';

class SingleProductCard extends StatelessWidget {
  const SingleProductCard({Key? key}) : super(key: key);


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
    return Container(
      width: MediaQuery.of(context).size.width * 0.93,
      height: 130,
      padding: EdgeInsets.all(10.0),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/checkbox-deactive.png")
            ],),
          const Padding(padding: EdgeInsets.only(left: 10.0)),
          Stack(
            children: [
              SizedBox(
                width: 105,
                height: 110,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset(
                    "assets/plywood.png",
                  ),),
              ),

              Positioned(
                  bottom: 5.0,
                  left: 5.0,
                  child: Container(
                    width: 37,
                    height: 15,
                    child: const Center(
                      child: Text(
                        "-35%",
                        style: TextStyle(
                          color: blackColor,
                          fontFamily:
                          montserrat500,
                          fontSize: 12,
                          letterSpacing:
                          customLetterSpacing,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(
                            3),
                        gradient:
                        const LinearGradient(
                            begin: Alignment
                                .topLeft,
                            end: Alignment
                                .bottomRight,
                            colors: <Color>[
                              orangeColor,
                              Color(0xFFFBC41E),
                            ])),
                  )),
              Positioned(
                  top: -10.0,
                  right: -5.0,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CustomIcon.favorite,
                        color: Colors.white,
                        size: 16,
                      ))),
            ],
          ),
          const Padding(padding: EdgeInsets.only(left: 10.0)),
          SizedBox(
              width: 145,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        "790р",
                        style: TextStyle(
                          color: blackColor,
                          fontFamily: montserrat600,
                          fontSize: 14,
                          letterSpacing:
                          customLetterSpacing,
                        ),
                      ),
                      Padding(
                          padding:
                          EdgeInsets.only(left: 6.0)),
                      Text(
                        "1000р",
                        style: TextStyle(
                          color: greyColor,
                          fontFamily: montserrat600,
                          fontSize: 14,
                          letterSpacing:
                          customLetterSpacing,
                          decoration:
                          TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: const [
                      Expanded(
                          child: Text(
                            "Фанера ламинированная 21х1220х2440 мм",
                            style: TextStyle(
                              color: blackColor,
                              fontFamily: montserrat600,
                              fontSize: 14,
                              letterSpacing:
                              customLetterSpacing,
                            ),
                          ))
                    ],
                  ),

                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                        height: 25,
                        child:
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding:EdgeInsets.all(0.0),
                              primary: orangeColor,
                            ),
                            onPressed: (){},
                            child: const Text("−",
                              style: TextStyle(fontFamily: openSans700, fontSize: 14, letterSpacing: customLetterSpacing, color: Colors.white),)),
                      ),
                      const Padding(padding: EdgeInsets.only(left:2.0),),
                      SizedBox(
                        width: 80,
                        height: 25,
                        child:
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding:EdgeInsets.all(0.0),
                              primary: orangeColor,
                            ),
                            onPressed: (){},
                            child: const Text("1",
                              style: TextStyle(fontFamily: openSans700, fontSize: 14, letterSpacing: customLetterSpacing, color: Colors.white),)),
                      ),
                      const Padding(padding: EdgeInsets.only(left:2.0),),
                      SizedBox(
                        width: 30,
                        height: 25,
                        child:
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding:EdgeInsets.all(0.0),
                              primary: orangeColor,
                            ),
                            onPressed: (){},
                            child: const Text("+",
                              style: TextStyle(fontFamily: openSans700, fontSize: 14, letterSpacing: customLetterSpacing, color: Colors.white),)),
                      ),


                    ],)
                ],)
          ),
          Column(
            children: [
              SizedBox(
                width: 16,
                height: 16,
                child:  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent,
                      padding: const EdgeInsets.all(0.0),
                    ),
                    onPressed: (){}, child: const Icon(CustomIcon.close, size: 16, color: blackColor)),
              ),


            ],)


        ],),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        const BorderRadius.all(Radius.circular(3)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0,0), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
