import 'package:flutter/material.dart';

class SelectAllProduct extends StatelessWidget {
  const SelectAllProduct({Key? key}) : super(key: key);


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
      width: MediaQuery.of(context).size.width * 1.0,
      height: 50,
      color: Colors.white,
      child:
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Row(children: [
              Image.asset("assets/checkbox-deactive.png"),
              const Padding(padding: EdgeInsets.only(left: 7.0)),
              const Text("Выбрать все",
                style: TextStyle(fontFamily: montserrat500, fontSize: 18, letterSpacing: customLetterSpacing, color: blackColor),),
            ],),
            Row(children: const[
              Text("Удалить выбранные",
                  style: TextStyle(fontFamily: montserrat500, fontSize: 16, letterSpacing: customLetterSpacing, color: greyColor, decoration: TextDecoration.underline))
            ],)
          ],),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
          BorderRadius.all(Radius.circular(3)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0,
                  3), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}
