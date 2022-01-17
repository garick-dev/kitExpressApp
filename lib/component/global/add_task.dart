import 'package:flutter/material.dart';


class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);


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


    return  SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    primary: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/stars.png",
                        width: 90,
                        height: 20,
                      ),
                      const Padding(
                          padding: EdgeInsets.only(top: 8.0)),
                      const Text(
                        "140 отзывов",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: montserrat500,
                            color: yellowColor),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
                // ElevatedButton.icon(onPressed: () {}, icon: Image.asset("assets/stars.png"), label: const Text("140 отзывов")),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                // width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20.0),
                        primary: yellowColor,
                      ),
                      onPressed: () {},
                      child: Column(
                        children: const [
                          Text(
                            "Создать задание",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: openSans700,
                              letterSpacing: customLetterSpacing,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ))),
            ],
          ),
        ],
      ),
    );
  }
}
